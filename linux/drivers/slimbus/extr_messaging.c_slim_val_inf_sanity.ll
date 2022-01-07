; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_messaging.c_slim_val_inf_sanity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_messaging.c_slim_val_inf_sanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_controller = type { i32 }
%struct.slim_val_inf = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [44 x i8] c"Sanity check failed:msg:offset:0x%x, mc:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slim_controller*, %struct.slim_val_inf*, i32)* @slim_val_inf_sanity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_val_inf_sanity(%struct.slim_controller* %0, %struct.slim_val_inf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slim_controller*, align 8
  %6 = alloca %struct.slim_val_inf*, align 8
  %7 = alloca i32, align 4
  store %struct.slim_controller* %0, %struct.slim_controller** %5, align 8
  store %struct.slim_val_inf* %1, %struct.slim_val_inf** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %9 = icmp ne %struct.slim_val_inf* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %12 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 16
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %17 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %20 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %18, %21
  %23 = icmp sgt i32 %22, 3072
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %10, %3
  br label %54

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %53 [
    i32 128, label %27
    i32 129, label %27
    i32 133, label %34
    i32 132, label %34
    i32 131, label %41
    i32 130, label %41
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %29 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %69

33:                                               ; preds = %27
  br label %53

34:                                               ; preds = %25, %25
  %35 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %36 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %69

40:                                               ; preds = %34
  br label %53

41:                                               ; preds = %25, %25
  %42 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %43 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %48 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %69

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %25, %52, %40, %33
  br label %54

54:                                               ; preds = %53, %24
  %55 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %56 = icmp ne %struct.slim_val_inf* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load %struct.slim_controller*, %struct.slim_controller** %5, align 8
  %59 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %62 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %51, %39, %32
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
