; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_tb_ring_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_tb_ring_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ring already started\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"starting %s %d\0A\00", align 1
@RING_FLAG_FRAME = common dso_local global i32 0, align 4
@RING_FLAG_ENABLE = common dso_local global i32 0, align 4
@TB_FRAME_SIZE = common dso_local global i32 0, align 4
@RING_FLAG_RAW = common dso_local global i32 0, align 4
@RING_FLAG_E2E = common dso_local global i32 0, align 4
@RING_E2E_UNUSED_HOPID = common dso_local global i32 0, align 4
@REG_RX_OPTIONS_E2E_HOP_SHIFT = common dso_local global i32 0, align 4
@REG_RX_OPTIONS_E2E_HOP_MASK = common dso_local global i32 0, align 4
@RING_FLAG_E2E_FLOW_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_ring_start(%struct.tb_ring* %0) #0 {
  %2 = alloca %struct.tb_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tb_ring* %0, %struct.tb_ring** %2, align 8
  %7 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %8 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %13 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %12, i32 0, i32 6
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %16 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %24 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %29 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @dev_WARN(i32* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %134

35:                                               ; preds = %22
  %36 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %37 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %36, i32 0, i32 5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %43 = call i32 @RING_TYPE(%struct.tb_ring* %42)
  %44 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %45 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %49 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RING_FLAG_FRAME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  %55 = load i32, i32* @RING_FLAG_ENABLE, align 4
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %35
  %57 = load i32, i32* @TB_FRAME_SIZE, align 4
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @RING_FLAG_ENABLE, align 4
  %59 = load i32, i32* @RING_FLAG_RAW, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %54
  %62 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %63 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @RING_FLAG_E2E, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %61
  %69 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %70 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @RING_E2E_UNUSED_HOPID, align 4
  %75 = load i32, i32* @REG_RX_OPTIONS_E2E_HOP_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @REG_RX_OPTIONS_E2E_HOP_MASK, align 4
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @RING_FLAG_E2E_FLOW_CONTROL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %73, %68, %61
  %86 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %87 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %88 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ring_iowrite64desc(%struct.tb_ring* %86, i32 %89, i32 0)
  %91 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %92 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %85
  %96 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %97 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %98 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ring_iowrite32desc(%struct.tb_ring* %96, i32 %99, i32 12)
  %101 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %102 = call i32 @ring_iowrite32options(%struct.tb_ring* %101, i32 0, i32 4)
  %103 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @ring_iowrite32options(%struct.tb_ring* %103, i32 %104, i32 0)
  br label %129

106:                                              ; preds = %85
  %107 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %108 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 16
  %111 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %112 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %110, %113
  store i32 %114, i32* %6, align 4
  %115 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %116 = load i32, i32* %3, align 4
  %117 = shl i32 %116, 16
  %118 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %119 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %117, %120
  %122 = call i32 @ring_iowrite32desc(%struct.tb_ring* %115, i32 %121, i32 12)
  %123 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @ring_iowrite32options(%struct.tb_ring* %123, i32 %124, i32 4)
  %126 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @ring_iowrite32options(%struct.tb_ring* %126, i32 %127, i32 0)
  br label %129

129:                                              ; preds = %106, %95
  %130 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %131 = call i32 @ring_interrupt_active(%struct.tb_ring* %130, i32 1)
  %132 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %133 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %129, %27, %21
  %135 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %136 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %135, i32 0, i32 6
  %137 = call i32 @spin_unlock(i32* %136)
  %138 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %139 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %138, i32 0, i32 5
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock_irq(i32* %141)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_WARN(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @RING_TYPE(%struct.tb_ring*) #1

declare dso_local i32 @ring_iowrite64desc(%struct.tb_ring*, i32, i32) #1

declare dso_local i32 @ring_iowrite32desc(%struct.tb_ring*, i32, i32) #1

declare dso_local i32 @ring_iowrite32options(%struct.tb_ring*, i32, i32) #1

declare dso_local i32 @ring_interrupt_active(%struct.tb_ring*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
