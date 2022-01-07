; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_set_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_msi-laptop.c_set_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSI_STANDARD_EC_COMMAND_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @set_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_device_state(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @sscanf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %18
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %24
  %33 = load i32, i32* @MSI_STANDARD_EC_COMMAND_ADDRESS, align 4
  %34 = call i32 @ec_read(i32 %33, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  store i32 %58, i32* %9, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* @MSI_STANDARD_EC_COMMAND_ADDRESS, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ec_write(i32 %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %75

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %39
  %73 = load i64, i64* %6, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %69, %37, %29, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @ec_read(i32, i32*) #1

declare dso_local i32 @ec_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
