; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_font_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_font_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.console_font = type { i32, i32, i32, i32 }
%struct.sisusb_usb_data = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KD_FONT_FLAG_DONT_RECALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font*, i32)* @sisusbcon_font_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_font_set(%struct.vc_data* %0, %struct.console_font* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca %struct.console_font*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sisusb_usb_data*, align 8
  %9 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store %struct.console_font* %1, %struct.console_font** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.console_font*, %struct.console_font** %6, align 8
  %11 = getelementptr inbounds %struct.console_font, %struct.console_font* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.console_font*, %struct.console_font** %6, align 8
  %14 = getelementptr inbounds %struct.console_font, %struct.console_font* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 8
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 256
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 512
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %115

26:                                               ; preds = %20, %17
  %27 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %29)
  store %struct.sisusb_usb_data* %30, %struct.sisusb_usb_data** %8, align 8
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %32 = icmp ne %struct.sisusb_usb_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %115

36:                                               ; preds = %26
  %37 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %38 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %43 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %49 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @vfree(i32* %50)
  %52 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %53 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %57 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @array_size(i32 %61, i32 32)
  %63 = call i32* @vmalloc(i32 %62)
  %64 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %65 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %64, i32 0, i32 3
  store i32* %63, i32** %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %68 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %73 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.console_font*, %struct.console_font** %6, align 8
  %76 = getelementptr inbounds %struct.console_font, %struct.console_font* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 %78, 32
  %80 = call i32 @memcpy(i32* %74, i32 %77, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %83 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.console_font*, %struct.console_font** %6, align 8
  %85 = getelementptr inbounds %struct.console_font, %struct.console_font* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %88 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 512
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %94 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %71, %66
  %96 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %97 = load %struct.console_font*, %struct.console_font** %6, align 8
  %98 = getelementptr inbounds %struct.console_font, %struct.console_font* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 512
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @KD_FONT_FLAG_DONT_RECALC, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  %110 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %111 = load %struct.console_font*, %struct.console_font** %6, align 8
  %112 = getelementptr inbounds %struct.console_font, %struct.console_font* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @sisusbcon_do_font_op(%struct.sisusb_usb_data* %96, i32 1, i32 2, i32 %99, i32 8192, i32 %102, i32 %109, %struct.vc_data* %110, i32 %113, i32 1)
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %95, %33, %23
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sisusbcon_do_font_op(%struct.sisusb_usb_data*, i32, i32, i32, i32, i32, i32, %struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
