; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_scroll_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_scroll_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }
%struct.sisusb_usb_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.sisusb_usb_data*, i32, i32, i32, i32)* @sisusbcon_scroll_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_scroll_area(%struct.vc_data* %0, %struct.sisusb_usb_data* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.sisusb_usb_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store %struct.sisusb_usb_data* %1, %struct.sisusb_usb_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %17 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub i32 %19, %20
  %22 = load i32, i32* %13, align 4
  %23 = mul i32 %21, %22
  %24 = mul i32 %23, 2
  store i32 %24, i32* %14, align 4
  %25 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %91 [
    i32 128, label %29
    i32 129, label %61
  ]

29:                                               ; preds = %6
  %30 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %30, %struct.vc_data* %31, i32 0, i32 %32)
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %35 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %36, %37
  %39 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %34, %struct.vc_data* %35, i32 0, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = sub i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = mul i32 %44, %45
  %47 = mul i32 %46, 2
  %48 = call i32 @memmove(i32 %33, i32 %39, i32 %47)
  %49 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %50 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub i32 %51, %52
  %54 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %49, %struct.vc_data* %50, i32 0, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 %56, %57
  %59 = mul i32 %58, 2
  %60 = call i32 @sisusbcon_memsetw(i32 %54, i32 %55, i32 %59)
  br label %91

61:                                               ; preds = %6
  %62 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %63 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %64, %65
  %67 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %62, %struct.vc_data* %63, i32 0, i32 %66)
  %68 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %69 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %68, %struct.vc_data* %69, i32 0, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = sub i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = mul i32 %76, %77
  %79 = mul i32 %78, 2
  %80 = call i32 @memmove(i32 %67, i32 %71, i32 %79)
  %81 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %82 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %81, %struct.vc_data* %82, i32 0, i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = mul i32 %86, %87
  %89 = mul i32 %88, 2
  %90 = call i32 @sisusbcon_memsetw(i32 %84, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %6, %61, %29
  %92 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %93 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %94 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @sisusb_vaddr(%struct.sisusb_usb_data* %93, %struct.vc_data* %94, i32 0, i32 %95)
  %97 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %98 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @sisusb_haddr(%struct.sisusb_usb_data* %97, %struct.vc_data* %98, i32 0, i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @sisusb_copy_memory(%struct.sisusb_usb_data* %92, i32 %96, i32 %100, i32 %101)
  %103 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %8, align 8
  %104 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  ret i32 1
}

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @sisusb_vaddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

declare dso_local i32 @sisusbcon_memsetw(i32, i32, i32) #1

declare dso_local i32 @sisusb_copy_memory(%struct.sisusb_usb_data*, i32, i32, i32) #1

declare dso_local i32 @sisusb_haddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
