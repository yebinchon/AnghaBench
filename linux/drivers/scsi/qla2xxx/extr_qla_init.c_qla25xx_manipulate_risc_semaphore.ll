; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla25xx_manipulate_risc_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla25xx_manipulate_risc_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@HCCRX_SET_RISC_PAUSE = common dso_local global i32 0, align 4
@TIMEOUT_SEMAPHORE = common dso_local global i64 0, align 8
@RISC_SEMAPHORE_SET = common dso_local global i32 0, align 4
@RISC_SEMAPHORE = common dso_local global i32 0, align 4
@TIMEOUT_TOTAL_ELAPSED = common dso_local global i64 0, align 8
@RISC_SEMAPHORE_FORCE = common dso_local global i32 0, align 4
@RISC_SEMAPHORE_CLR = common dso_local global i32 0, align 4
@TIMEOUT_SEMAPHORE_FORCE = common dso_local global i64 0, align 8
@RISC_SEMAPHORE_FORCE_CLR = common dso_local global i32 0, align 4
@RISC_SEMAPHORE_FORCE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @qla25xx_manipulate_risc_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_manipulate_risc_semaphore(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 100, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 373
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 576
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %126

26:                                               ; preds = %16, %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* @HCCRX_SET_RISC_PAUSE, align 4
  %35 = call i32 @WRT_REG_DWORD(i32* %33, i32 %34)
  %36 = call i32 @udelay(i32 100)
  br label %37

37:                                               ; preds = %120, %26
  %38 = load i64, i64* @TIMEOUT_SEMAPHORE, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sdiv i64 %39, %40
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %67, %37
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %7, align 8
  %45 = icmp ne i64 %43, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = load i32, i32* @RISC_SEMAPHORE_SET, align 4
  %49 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_13__* %47, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = call i32 @qla25xx_read_risc_sema_reg(%struct.TYPE_13__* %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @RISC_SEMAPHORE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %68

57:                                               ; preds = %46
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @msleep(i64 %58)
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @TIMEOUT_TOTAL_ELAPSED, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %121

67:                                               ; preds = %57
  br label %42

68:                                               ; preds = %56, %42
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @RISC_SEMAPHORE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %121

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @RISC_SEMAPHORE_FORCE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %125

80:                                               ; preds = %74
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = load i32, i32* @RISC_SEMAPHORE_CLR, align 4
  %83 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_13__* %81, i32 %82)
  %84 = load i64, i64* @TIMEOUT_SEMAPHORE_FORCE, align 8
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %4, align 8
  %87 = sdiv i64 %85, %86
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %110, %80
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %7, align 8
  %91 = icmp ne i64 %89, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = call i32 @qla25xx_read_risc_sema_reg(%struct.TYPE_13__* %93, i32* %3)
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @RISC_SEMAPHORE_FORCE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %111

100:                                              ; preds = %92
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @msleep(i64 %101)
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %5, align 8
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @TIMEOUT_TOTAL_ELAPSED, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %121

110:                                              ; preds = %100
  br label %88

111:                                              ; preds = %99, %88
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @RISC_SEMAPHORE_FORCE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %118 = load i32, i32* @RISC_SEMAPHORE_FORCE_CLR, align 4
  %119 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_13__* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %111
  br label %37

121:                                              ; preds = %109, %73, %66
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = load i32, i32* @RISC_SEMAPHORE_FORCE_SET, align 4
  %124 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_13__* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %79
  br label %126

126:                                              ; preds = %125, %25
  ret void
}

declare dso_local i32 @WRT_REG_DWORD(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @qla25xx_read_risc_sema_reg(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
