; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_ign_wide_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_ign_wide_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_devinfo = type { i32 }
%struct.scb = type { %struct.ahd_dma_seg* }
%struct.ahd_dma_seg = type { i32, i32 }
%struct.ahd_dma64_seg = type { i32, i32 }

@SEQ_FLAGS = common dso_local global i32 0, align 4
@DPHASE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i64 0, align 8
@SCB_RESIDUAL_SGPTR = common dso_local global i32 0, align 4
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SCB_TASK_ATTRIBUTE = common dso_local global i32 0, align 4
@SCB_XFERLEN_ODD = common dso_local global i32 0, align 4
@SCB_RESIDUAL_DATACNT = common dso_local global i32 0, align 4
@AHD_SG_LEN_MASK = common dso_local global i32 0, align 4
@SHADDR = common dso_local global i32 0, align 4
@SG_PTR_MASK = common dso_local global i32 0, align 4
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*)* @ahd_handle_ign_wide_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_ign_wide_residue(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahd_dma64_seg*, align 8
  %12 = alloca %struct.ahd_dma_seg*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %4, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %15, i32 %16)
  store %struct.scb* %17, %struct.scb** %6, align 8
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %19 = load i32, i32* @SEQ_FLAGS, align 4
  %20 = call i32 @ahd_inb(%struct.ahd_softc* %18, i32 %19)
  %21 = load i32, i32* @DPHASE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.scb*, %struct.scb** %6, align 8
  %26 = call i64 @ahd_get_transfer_dir(%struct.scb* %25)
  %27 = load i64, i64* @CAM_DIR_IN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %2
  br label %204

30:                                               ; preds = %24
  %31 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %32 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %33 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SG_LIST_NULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %40 = load i32, i32* @SCB_TASK_ATTRIBUTE, align 4
  %41 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %39, i32 %40)
  %42 = load i32, i32* @SCB_XFERLEN_ODD, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %203

46:                                               ; preds = %38, %30
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %48 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %49 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %51 = load i32, i32* @SCB_RESIDUAL_DATACNT, align 4
  %52 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SG_LIST_NULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %46
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %64 = load i32, i32* @SHADDR, align 4
  %65 = call i32 @ahd_inq(%struct.ahd_softc* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @SG_PTR_MASK, align 4
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %134

79:                                               ; preds = %62
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %81 = load %struct.scb*, %struct.scb** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc* %80, %struct.scb* %81, i32 %82)
  %84 = bitcast %struct.ahd_dma_seg* %83 to %struct.ahd_dma64_seg*
  store %struct.ahd_dma64_seg* %84, %struct.ahd_dma64_seg** %11, align 8
  %85 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %86 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %85, i32 -1
  store %struct.ahd_dma64_seg* %86, %struct.ahd_dma64_seg** %11, align 8
  %87 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %88 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ahd_le32toh(i32 %89)
  %91 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %10, align 4
  %93 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %94 = load %struct.scb*, %struct.scb** %6, align 8
  %95 = getelementptr inbounds %struct.scb, %struct.scb* %94, i32 0, i32 0
  %96 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %95, align 8
  %97 = bitcast %struct.ahd_dma_seg* %96 to %struct.ahd_dma64_seg*
  %98 = icmp ne %struct.ahd_dma64_seg* %93, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %79
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %133

105:                                              ; preds = %99
  %106 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %107 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %106, i32 -1
  store %struct.ahd_dma64_seg* %107, %struct.ahd_dma64_seg** %11, align 8
  %108 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %109 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ahd_le32toh(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = or i32 1, %115
  store i32 %116, i32* %8, align 4
  %117 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %118 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ahd_le64toh(i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %123 = and i32 %121, %122
  %124 = add nsw i32 %120, %123
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %127 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %126, i32 1
  store %struct.ahd_dma64_seg* %127, %struct.ahd_dma64_seg** %11, align 8
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %129 = load %struct.scb*, %struct.scb** %6, align 8
  %130 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %11, align 8
  %131 = bitcast %struct.ahd_dma64_seg* %130 to %struct.ahd_dma_seg*
  %132 = call i32 @ahd_sg_virt_to_bus(%struct.ahd_softc* %128, %struct.scb* %129, %struct.ahd_dma_seg* %131)
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %105, %99, %79
  br label %186

134:                                              ; preds = %62
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = load %struct.scb*, %struct.scb** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc* %135, %struct.scb* %136, i32 %137)
  store %struct.ahd_dma_seg* %138, %struct.ahd_dma_seg** %12, align 8
  %139 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %140 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %139, i32 -1
  store %struct.ahd_dma_seg* %140, %struct.ahd_dma_seg** %12, align 8
  %141 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %142 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ahd_le32toh(i32 %143)
  %145 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %10, align 4
  %147 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %148 = load %struct.scb*, %struct.scb** %6, align 8
  %149 = getelementptr inbounds %struct.scb, %struct.scb* %148, i32 0, i32 0
  %150 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %149, align 8
  %151 = icmp ne %struct.ahd_dma_seg* %147, %150
  br i1 %151, label %152, label %185

152:                                              ; preds = %134
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %156 = and i32 %154, %155
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %152
  %159 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %160 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %159, i32 -1
  store %struct.ahd_dma_seg* %160, %struct.ahd_dma_seg** %12, align 8
  %161 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %162 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ahd_le32toh(i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %165, %167
  %169 = or i32 1, %168
  store i32 %169, i32* %8, align 4
  %170 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %171 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ahd_le32toh(i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %176 = and i32 %174, %175
  %177 = add nsw i32 %173, %176
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  %179 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %180 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %179, i32 1
  store %struct.ahd_dma_seg* %180, %struct.ahd_dma_seg** %12, align 8
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %182 = load %struct.scb*, %struct.scb** %6, align 8
  %183 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %12, align 8
  %184 = call i32 @ahd_sg_virt_to_bus(%struct.ahd_softc* %181, %struct.scb* %182, %struct.ahd_dma_seg* %183)
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %158, %152, %134
  br label %186

186:                                              ; preds = %185, %133
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %188 = load i32, i32* @SCB_TASK_ATTRIBUTE, align 4
  %189 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %190 = load i32, i32* @SCB_TASK_ATTRIBUTE, align 4
  %191 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %189, i32 %190)
  %192 = load i32, i32* @SCB_XFERLEN_ODD, align 4
  %193 = xor i32 %191, %192
  %194 = call i32 @ahd_outb(%struct.ahd_softc* %187, i32 %188, i32 %193)
  %195 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %196 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @ahd_outl(%struct.ahd_softc* %195, i32 %196, i32 %197)
  %199 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %200 = load i32, i32* @SCB_RESIDUAL_DATACNT, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @ahd_outl(%struct.ahd_softc* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %186, %45
  br label %204

204:                                              ; preds = %203, %29
  ret void
}

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @ahd_get_transfer_dir(%struct.scb*) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inl_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inq(%struct.ahd_softc*, i32) #1

declare dso_local %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_le64toh(i32) #1

declare dso_local i32 @ahd_sg_virt_to_bus(%struct.ahd_softc*, %struct.scb*, %struct.ahd_dma_seg*) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
