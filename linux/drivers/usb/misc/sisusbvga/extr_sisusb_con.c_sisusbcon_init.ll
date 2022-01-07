; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sisusb_usb_data = type { i32, i32*, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @sisusbcon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_init(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sisusb_usb_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.sisusb_usb_data* @sisusb_get_sisusb(i64 %10)
  store %struct.sisusb_usb_data* %11, %struct.sisusb_usb_data** %5, align 8
  %12 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %13 = icmp ne %struct.sisusb_usb_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %93

15:                                               ; preds = %2
  %16 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %17 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %20 = call i32 @sisusb_sisusb_valid(%struct.sisusb_usb_data* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %24 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %23, i32 0, i32 3
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %93

26:                                               ; preds = %15
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 2
  store i32 30464, i32* %30, align 4
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %32 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2048, i32 0
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %40 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %42 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 1, i32* %47, align 4
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 4
  store i32 400, i32* %49, align 4
  %50 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %51 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  store i32 80, i32* %6, align 4
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %58, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %65 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %64, i32 0, i32 4
  %66 = call i32 @kref_get(i32* %65)
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %26
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = call i32 @con_set_default_unimap(%struct.vc_data* %73)
  br label %75

75:                                               ; preds = %72, %26
  %76 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %5, align 8
  %77 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %76, i32 0, i32 3
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  br label %93

88:                                               ; preds = %75
  %89 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @vc_resize(%struct.vc_data* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %14, %22, %88, %81
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sisusb_sisusb_valid(%struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @con_set_default_unimap(%struct.vc_data*) #1

declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
