; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i32, i32, %struct.cyclades_card* }
%struct.cyclades_card = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"cy_wait_until_sent\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CySRER = common dso_local global i32 0, align 4
@CyTxRdy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @cy_wait_until_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cy_wait_until_sent(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyclades_card*, align 8
  %6 = alloca %struct.cyclades_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.cyclades_port*, %struct.cyclades_port** %10, align 8
  store %struct.cyclades_port* %11, %struct.cyclades_port** %6, align 8
  %12 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @serial_paranoia_check(%struct.cyclades_port* %12, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %108

19:                                               ; preds = %2
  %20 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %21 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %108

25:                                               ; preds = %19
  %26 = load i64, i64* @jiffies, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %28 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = sdiv i32 %30, 50
  %32 = sub nsw i32 %29, %31
  %33 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %34 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %37, 5
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %59 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 2, %60
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56, %53
  %64 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %65 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 2, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %56
  %69 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %70 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %69, i32 0, i32 2
  %71 = load %struct.cyclades_card*, %struct.cyclades_card** %70, align 8
  store %struct.cyclades_card* %71, %struct.cyclades_card** %5, align 8
  %72 = load %struct.cyclades_card*, %struct.cyclades_card** %5, align 8
  %73 = call i32 @cy_is_Z(%struct.cyclades_card* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %103, label %75

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %101, %75
  %77 = load %struct.cyclades_port*, %struct.cyclades_port** %6, align 8
  %78 = load i32, i32* @CySRER, align 4
  %79 = call i32 @cyy_readb(%struct.cyclades_port* %77, i32 %78)
  %80 = load i32, i32* @CyTxRdy, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @jiffies_to_msecs(i32 %84)
  %86 = call i64 @msleep_interruptible(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %102

89:                                               ; preds = %83
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %94, %96
  %98 = call i64 @time_after(i64 %93, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %102

101:                                              ; preds = %92, %89
  br label %76

102:                                              ; preds = %100, %88, %76
  br label %103

103:                                              ; preds = %102, %68
  %104 = load i32, i32* %8, align 4
  %105 = mul nsw i32 %104, 5
  %106 = call i32 @jiffies_to_msecs(i32 %105)
  %107 = call i64 @msleep_interruptible(i32 %106)
  br label %108

108:                                              ; preds = %103, %24, %18
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.cyclades_port*, i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cy_is_Z(%struct.cyclades_card*) #1

declare dso_local i32 @cyy_readb(%struct.cyclades_port*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
