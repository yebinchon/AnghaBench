; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_cq_tasklet_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_cq_tasklet_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_cq = type { i64, i32, %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.hisi_sas_slot*, %struct.hisi_sas_itct*, %struct.hisi_sas_complete_v2_hdr**, i32 }
%struct.hisi_sas_slot = type { i64, i32 }
%struct.hisi_sas_itct = type { i32* }
%struct.hisi_sas_complete_v2_hdr = type { i64, i64 }

@COMPL_Q_0_WR_PTR = common dso_local global i64 0, align 8
@CMPLT_HDR_DEV_ID_MSK = common dso_local global i64 0, align 8
@CMPLT_HDR_DEV_ID_OFF = common dso_local global i64 0, align 8
@CMPLT_HDR_IPTT_MSK = common dso_local global i64 0, align 8
@HISI_SAS_QUEUE_SLOTS = common dso_local global i64 0, align 8
@COMPL_Q_0_RD_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cq_tasklet_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_tasklet_v2_hw(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hisi_sas_cq*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.hisi_sas_slot*, align 8
  %6 = alloca %struct.hisi_sas_itct*, align 8
  %7 = alloca %struct.hisi_sas_complete_v2_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hisi_sas_complete_v2_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = inttoptr i64 %21 to %struct.hisi_sas_cq*
  store %struct.hisi_sas_cq* %22, %struct.hisi_sas_cq** %3, align 8
  %23 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %24 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %23, i32 0, i32 2
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %24, align 8
  store %struct.hisi_hba* %25, %struct.hisi_hba** %4, align 8
  %26 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %27 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %30 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %33 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %39 = call i32 @phys_try_accept_stp_links_v2_hw(%struct.hisi_hba* %38)
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %42 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %41, i32 0, i32 2
  %43 = load %struct.hisi_sas_complete_v2_hdr**, %struct.hisi_sas_complete_v2_hdr*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %43, i64 %45
  %47 = load %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %46, align 8
  store %struct.hisi_sas_complete_v2_hdr* %47, %struct.hisi_sas_complete_v2_hdr** %7, align 8
  %48 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %49 = load i64, i64* @COMPL_Q_0_WR_PTR, align 8
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 20, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i64 @hisi_sas_read32(%struct.hisi_hba* %48, i64 %53)
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %166, %40
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %167

59:                                               ; preds = %55
  %60 = load %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.hisi_sas_complete_v2_hdr, %struct.hisi_sas_complete_v2_hdr* %60, i64 %61
  store %struct.hisi_sas_complete_v2_hdr* %62, %struct.hisi_sas_complete_v2_hdr** %12, align 8
  %63 = load %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %12, align 8
  %64 = getelementptr inbounds %struct.hisi_sas_complete_v2_hdr, %struct.hisi_sas_complete_v2_hdr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %136

67:                                               ; preds = %59
  %68 = load %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %12, align 8
  %69 = getelementptr inbounds %struct.hisi_sas_complete_v2_hdr, %struct.hisi_sas_complete_v2_hdr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @le32_to_cpu(i64 %70)
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @ffs(i64 %72)
  store i32 %73, i32* %15, align 4
  %74 = load %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %12, align 8
  %75 = getelementptr inbounds %struct.hisi_sas_complete_v2_hdr, %struct.hisi_sas_complete_v2_hdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @le32_to_cpu(i64 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @CMPLT_HDR_DEV_ID_MSK, align 8
  %80 = and i64 %78, %79
  %81 = load i64, i64* @CMPLT_HDR_DEV_ID_OFF, align 8
  %82 = lshr i64 %80, %81
  store i64 %82, i64* %10, align 8
  %83 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %84 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %83, i32 0, i32 1
  %85 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %85, i64 %86
  store %struct.hisi_sas_itct* %87, %struct.hisi_sas_itct** %6, align 8
  br label %88

88:                                               ; preds = %91, %67
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %135

91:                                               ; preds = %88
  %92 = load %struct.hisi_sas_itct*, %struct.hisi_sas_itct** %6, align 8
  %93 = getelementptr inbounds %struct.hisi_sas_itct, %struct.hisi_sas_itct* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32* %95, i32** %17, align 8
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %15, align 4
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sdiv i32 %99, 5
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @le64_to_cpu(i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %15, align 4
  %108 = srem i32 %107, 5
  %109 = mul nsw i32 %108, 12
  %110 = ashr i32 %106, %109
  %111 = and i32 %110, 4095
  store i32 %111, i32* %13, align 4
  %112 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %113 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %112, i32 0, i32 0
  %114 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %114, i64 %116
  store %struct.hisi_sas_slot* %117, %struct.hisi_sas_slot** %5, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %120 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %123 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %125 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %126 = call i32 @slot_complete_v2_hw(%struct.hisi_hba* %124, %struct.hisi_sas_slot* %125)
  %127 = load i32, i32* %15, align 4
  %128 = shl i32 1, %127
  %129 = xor i32 %128, -1
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %14, align 8
  %132 = and i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @ffs(i64 %133)
  store i32 %134, i32* %15, align 4
  br label %88

135:                                              ; preds = %88
  br label %160

136:                                              ; preds = %59
  %137 = load %struct.hisi_sas_complete_v2_hdr*, %struct.hisi_sas_complete_v2_hdr** %12, align 8
  %138 = getelementptr inbounds %struct.hisi_sas_complete_v2_hdr, %struct.hisi_sas_complete_v2_hdr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @le32_to_cpu(i64 %139)
  store i64 %140, i64* %20, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* @CMPLT_HDR_IPTT_MSK, align 8
  %143 = and i64 %141, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %13, align 4
  %145 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %146 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %145, i32 0, i32 0
  %147 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %147, i64 %149
  store %struct.hisi_sas_slot* %150, %struct.hisi_sas_slot** %5, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %153 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %156 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %158 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %5, align 8
  %159 = call i32 @slot_complete_v2_hw(%struct.hisi_hba* %157, %struct.hisi_sas_slot* %158)
  br label %160

160:                                              ; preds = %136, %135
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %8, align 8
  %163 = load i64, i64* @HISI_SAS_QUEUE_SLOTS, align 8
  %164 = icmp uge i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i64 0, i64* %8, align 8
  br label %166

166:                                              ; preds = %165, %160
  br label %55

167:                                              ; preds = %55
  %168 = load i64, i64* %8, align 8
  %169 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %3, align 8
  %170 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %172 = load i64, i64* @COMPL_Q_0_RD_PTR, align 8
  %173 = load i32, i32* %11, align 4
  %174 = mul nsw i32 20, %173
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %172, %175
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @hisi_sas_write32(%struct.hisi_hba* %171, i64 %176, i64 %177)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @phys_try_accept_stp_links_v2_hw(%struct.hisi_hba*) #1

declare dso_local i64 @hisi_sas_read32(%struct.hisi_hba*, i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @slot_complete_v2_hw(%struct.hisi_hba*, %struct.hisi_sas_slot*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
