; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_set_palette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32*, i32 }
%struct.sisusb_usb_data = type { i32 }

@SISCOLIDX = common dso_local global i32 0, align 4
@SISCOLDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i8*)* @sisusbcon_set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_set_palette(%struct.vc_data* %0, i8* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = call i32 @con_is_visible(%struct.vc_data* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %100

12:                                               ; preds = %2
  %13 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %14 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %15)
  store %struct.sisusb_usb_data* %16, %struct.sisusb_usb_data** %5, align 8
  %17 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %18 = icmp ne %struct.sisusb_usb_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %100

20:                                               ; preds = %12
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %23 = call i64 @sisusb_is_inactive(%struct.vc_data* %21, %struct.sisusb_usb_data* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %27 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %100

29:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %93, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %96

33:                                               ; preds = %30
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %35 = load i32, i32* @SISCOLIDX, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @sisusb_setreg(%struct.sisusb_usb_data* %34, i32 %35, i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %96

44:                                               ; preds = %33
  %45 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %46 = load i32, i32* @SISCOLDATA, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 2
  %56 = trunc i32 %55 to i8
  %57 = call i64 @sisusb_setreg(%struct.sisusb_usb_data* %45, i32 %46, i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %96

60:                                               ; preds = %44
  %61 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %62 = load i32, i32* @SISCOLDATA, align 4
  %63 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 2
  %72 = trunc i32 %71 to i8
  %73 = call i64 @sisusb_setreg(%struct.sisusb_usb_data* %61, i32 %62, i8 zeroext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %96

76:                                               ; preds = %60
  %77 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %78 = load i32, i32* @SISCOLDATA, align 4
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 2
  %88 = trunc i32 %87 to i8
  %89 = call i64 @sisusb_setreg(%struct.sisusb_usb_data* %77, i32 %78, i8 zeroext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %96

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %30

96:                                               ; preds = %91, %75, %59, %43, %30
  %97 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %98 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  br label %100

100:                                              ; preds = %96, %25, %19, %11
  ret void
}

declare dso_local i32 @con_is_visible(%struct.vc_data*) #1

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sisusb_setreg(%struct.sisusb_usb_data*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
