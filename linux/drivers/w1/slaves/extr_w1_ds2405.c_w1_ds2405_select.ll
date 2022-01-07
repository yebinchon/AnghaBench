; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2405.c_w1_ds2405_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2405.c_w1_ds2405_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, %struct.w1_master* }
%struct.w1_master = type { i32 }

@W1_ALARM_SEARCH = common dso_local global i32 0, align 4
@W1_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32)* @w1_ds2405_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_ds2405_select(%struct.w1_slave* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.w1_slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %12 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %11, i32 0, i32 1
  %13 = load %struct.w1_master*, %struct.w1_master** %12, align 8
  store %struct.w1_master* %13, %struct.w1_master** %6, align 8
  %14 = load %struct.w1_slave*, %struct.w1_slave** %4, align 8
  %15 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le64_to_cpu(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %19 = call i64 @w1_reset_bus(%struct.w1_master* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @W1_ALARM_SEARCH, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @W1_SEARCH, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = call i32 @w1_write_8(%struct.w1_master* %23, i32 %31)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %70, %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %34, 64
  br i1 %35, label %36, label %73

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @w1_triplet(%struct.w1_master* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @BIT(i32 0)
  %50 = call i32 @BIT(i32 1)
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = call i32 @BIT(i32 0)
  %54 = call i32 @BIT(i32 1)
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %74

58:                                               ; preds = %36
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @BIT(i32 2)
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %74

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %33

73:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %57, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @w1_reset_bus(%struct.w1_master*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @w1_triplet(%struct.w1_master*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
