; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_build_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_build_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* @sisusbcon_build_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_build_attr(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.vc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %7
  %20 = load i32, i32* %15, align 4
  %21 = and i32 %20, 240
  %22 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %15, align 4
  br label %37

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %15, align 4
  %31 = and i32 %30, 240
  %32 = load %struct.vc_data*, %struct.vc_data** %8, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %29, %26
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = and i32 %41, 136
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, 4
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 %45, 4
  %47 = or i32 %44, %46
  %48 = and i32 %47, 119
  %49 = or i32 %42, %48
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %40, %37
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %15, align 4
  %55 = xor i32 %54, 128
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = xor i32 %60, 8
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %15, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
