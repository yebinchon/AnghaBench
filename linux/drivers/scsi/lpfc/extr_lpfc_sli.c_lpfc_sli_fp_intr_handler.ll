; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_fp_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_fp_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DEFER_ERATT = common dso_local global i32 0, align 4
@HA_R0_CLR_MSK = common dso_local global i32 0, align 4
@HA_R1_CLR_MSK = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_EXTRA_RING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_fp_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_sli_ring*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.lpfc_hba*
  store %struct.lpfc_hba* %12, %struct.lpfc_hba** %6, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %14 = icmp ne %struct.lpfc_hba* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %154

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSIX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %21
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %29 = call i64 @lpfc_intr_state_check(%struct.lpfc_hba* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %154

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @lpfc_readl(i32 %36, i32* %7)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %154

41:                                               ; preds = %33
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 6
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DEFER_ERATT, align 4
  %50 = and i32 %48, %49
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 6
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* @IRQ_NONE, align 4
  store i32 %58, i32* %3, align 4
  br label %154

59:                                               ; preds = %41
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @HA_R0_CLR_MSK, align 4
  %62 = load i32, i32* @HA_R1_CLR_MSK, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writel(i32 %64, i32 %67)
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @readl(i32 %71)
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 6
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %81

77:                                               ; preds = %21
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %59
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @HA_RXMASK, align 4
  %90 = load i32, i32* @LPFC_FCP_RING, align 4
  %91 = mul nsw i32 4, %90
  %92 = shl i32 %89, %91
  %93 = and i32 %88, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %8, align 8
  %95 = load i32, i32* @LPFC_FCP_RING, align 4
  %96 = mul nsw i32 4, %95
  %97 = load i64, i64* %8, align 8
  %98 = zext i32 %96 to i64
  %99 = lshr i64 %97, %98
  store i64 %99, i64* %8, align 8
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %102, align 8
  %104 = load i32, i32* @LPFC_FCP_RING, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %103, i64 %105
  store %struct.lpfc_sli_ring* %106, %struct.lpfc_sli_ring** %10, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* @HA_RXMASK, align 4
  %109 = sext i32 %108 to i64
  %110 = and i64 %107, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %81
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %114 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %113, %struct.lpfc_sli_ring* %114, i64 %115)
  br label %117

117:                                              ; preds = %112, %81
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %152

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @HA_RXMASK, align 4
  %125 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %126 = mul nsw i32 4, %125
  %127 = shl i32 %124, %126
  %128 = and i32 %123, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %8, align 8
  %130 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %131 = mul nsw i32 4, %130
  %132 = load i64, i64* %8, align 8
  %133 = zext i32 %131 to i64
  %134 = lshr i64 %132, %133
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i32, i32* @HA_RXMASK, align 4
  %137 = sext i32 %136 to i64
  %138 = and i64 %135, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %122
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %144, align 8
  %146 = load i32, i32* @LPFC_EXTRA_RING, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %145, i64 %147
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %141, %struct.lpfc_sli_ring* %148, i64 %149)
  br label %151

151:                                              ; preds = %140, %122
  br label %152

152:                                              ; preds = %151, %117
  %153 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %53, %39, %31, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @lpfc_intr_state_check(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
