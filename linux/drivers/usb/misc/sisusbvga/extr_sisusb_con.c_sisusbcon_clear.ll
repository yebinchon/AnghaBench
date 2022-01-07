; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32 }
%struct.sisusb_usb_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32)* @sisusbcon_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_clear(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sisusb_usb_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %5
  br label %122

26:                                               ; preds = %22
  %27 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %29)
  store %struct.sisusb_usb_data* %30, %struct.sisusb_usb_data** %11, align 8
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %32 = icmp ne %struct.sisusb_usb_data* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %122

34:                                               ; preds = %26
  %35 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32* @sisusb_vaddr(%struct.sisusb_usb_data* %35, %struct.vc_data* %36, i32 %37, i32 %38)
  store i32* %39, i32** %16, align 8
  %40 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %41 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %15, align 4
  %62 = mul nsw i32 %60, %61
  %63 = mul nsw i32 %62, 2
  %64 = call i32 @sisusbcon_memsetw(i32* %58, i32 %59, i32 %63)
  br label %84

65:                                               ; preds = %51, %48
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %76, %65
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32*, i32** %16, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %73, 2
  %75 = call i32 @sisusbcon_memsetw(i32* %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %16, align 8
  br label %67

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %86 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %87 = call i64 @sisusb_is_inactive(%struct.vc_data* %85, %struct.sisusb_usb_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %91 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  br label %122

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sub nsw i32 %98, %103
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %14, align 4
  %106 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %107 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %108 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32* @sisusb_vaddr(%struct.sisusb_usb_data* %107, %struct.vc_data* %108, i32 %109, i32 %110)
  %112 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %113 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @sisusb_haddr(%struct.sisusb_usb_data* %112, %struct.vc_data* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @sisusb_copy_memory(%struct.sisusb_usb_data* %106, i32* %111, i32 %116, i32 %117)
  %119 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %11, align 8
  %120 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %119, i32 0, i32 1
  %121 = call i32 @mutex_unlock(i32* %120)
  br label %122

122:                                              ; preds = %93, %89, %33, %25
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i32* @sisusb_vaddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

declare dso_local i32 @sisusbcon_memsetw(i32*, i32, i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sisusb_copy_memory(%struct.sisusb_usb_data*, i32*, i32, i32) #1

declare dso_local i32 @sisusb_haddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
