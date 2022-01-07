; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_tegra-tcu.c_tegra_tcu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_tegra-tcu.c_tegra_tcu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_tcu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_tcu*, i8*, i32)* @tegra_tcu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_tcu_write(%struct.tegra_tcu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_tcu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_tcu* %0, %struct.tegra_tcu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %60, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = call i32 @TCU_MBOX_BYTE(i32 %19, i8 signext 10)
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %53

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = call i32 @TCU_MBOX_BYTE(i32 %35, i8 signext 13)
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %52

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @TCU_MBOX_BYTE(i32 %41, i8 signext %48)
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %40, %34
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.tegra_tcu*, %struct.tegra_tcu** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @tegra_tcu_write_one(%struct.tegra_tcu* %57, i32 %58, i32 3)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %53
  br label %11

61:                                               ; preds = %11
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.tegra_tcu*, %struct.tegra_tcu** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @tegra_tcu_write_one(%struct.tegra_tcu* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @TCU_MBOX_BYTE(i32, i8 signext) #1

declare dso_local i32 @tegra_tcu_write_one(%struct.tegra_tcu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
