; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_cseq_cio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_init_cseq_cio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CSEQCOMINTEN = common dso_local global i64 0, align 8
@CSEQDLCTL = common dso_local global i64 0, align 8
@ASD_DL_SIZE_BITS = common dso_local global i32 0, align 4
@CSEQDLOFFS = common dso_local global i64 0, align 8
@SCBPRO = common dso_local global i32 0, align 4
@CSEQCON = common dso_local global i32 0, align 4
@CM11INTVEC0 = common dso_local global i32 0, align 4
@cseq_vecs = common dso_local global i32* null, align 8
@CM11INTVEC1 = common dso_local global i32 0, align 4
@CM11INTVEC2 = common dso_local global i32 0, align 4
@CARP2INTEN = common dso_local global i64 0, align 8
@EN_ARP2HALTC = common dso_local global i32 0, align 4
@CSCRATCHPAGE = common dso_local global i64 0, align 8
@CPRGMCNT = common dso_local global i32 0, align 4
@cseq_idle_loop = common dso_local global i32 0, align 4
@EN_CMnRSPMBXF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_init_cseq_cio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_init_cseq_cio(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %4 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %5 = load i64, i64* @CSEQCOMINTEN, align 8
  %6 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %4, i64 %5, i32 0)
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %8 = load i64, i64* @CSEQDLCTL, align 8
  %9 = load i32, i32* @ASD_DL_SIZE_BITS, align 4
  %10 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %7, i64 %8, i32 %9)
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = load i64, i64* @CSEQDLOFFS, align 8
  %13 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %11, i64 %12, i32 0)
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %15 = load i64, i64* @CSEQDLOFFS, align 8
  %16 = add nsw i64 %15, 1
  %17 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %14, i64 %16, i32 0)
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %19 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %22 = load i32, i32* @SCBPRO, align 4
  %23 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %21, i32 %22, i32 0)
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %25 = load i32, i32* @CSEQCON, align 4
  %26 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %24, i32 %25, i32 0)
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %28 = load i32, i32* @CM11INTVEC0, align 4
  %29 = load i32*, i32** @cseq_vecs, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %27, i32 %28, i32 %31)
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %34 = load i32, i32* @CM11INTVEC1, align 4
  %35 = load i32*, i32** @cseq_vecs, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %33, i32 %34, i32 %37)
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %40 = load i32, i32* @CM11INTVEC2, align 4
  %41 = load i32*, i32** @cseq_vecs, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %39, i32 %40, i32 %43)
  %45 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %46 = load i64, i64* @CARP2INTEN, align 8
  %47 = load i32, i32* @EN_ARP2HALTC, align 4
  %48 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %45, i64 %46, i32 %47)
  %49 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %50 = load i64, i64* @CSCRATCHPAGE, align 8
  %51 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %49, i64 %50, i32 4)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %60, %1
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 9
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @CMnSCRATCHPAGE(i32 %57)
  %59 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %56, i64 %58, i32 0)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %65 = load i32, i32* @CPRGMCNT, align 4
  %66 = load i32, i32* @cseq_idle_loop, align 4
  %67 = call i32 @asd_write_reg_word(%struct.asd_ha_struct* %64, i32 %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %81, %63
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @CMnINTEN(i32 %73)
  %75 = load i32, i32* @EN_CMnRSPMBXF, align 4
  %76 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %72, i32 %74, i32 %75)
  %77 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @CMnREQMBX(i32 %78)
  %80 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %77, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %68

84:                                               ; preds = %68
  ret void
}

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i64, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_write_reg_word(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i64 @CMnSCRATCHPAGE(i32) #1

declare dso_local i32 @CMnINTEN(i32) #1

declare dso_local i32 @CMnREQMBX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
