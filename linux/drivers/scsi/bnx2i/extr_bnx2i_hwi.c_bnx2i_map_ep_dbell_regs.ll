; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_map_ep_dbell_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_map_ep_dbell_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_endpoint = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }

@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@BNX2X_DOORBELL_PCI_BAR = common dso_local global i32 0, align 4
@BNX2X_DB_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_5709 = common dso_local global i32 0, align 4
@BNX2I_MQ_BIN_MODE = common dso_local global i64 0, align 8
@BNX2_MQ_CONFIG2 = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG2_FIRST_L4L5 = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG2_CONT_SZ = common dso_local global i32 0, align 4
@CTX_OFFSET = common dso_local global i32 0, align 4
@MAX_CID_CNT = common dso_local global i32 0, align 4
@MB_KERNEL_CTX_SIZE = common dso_local global i32 0, align 4
@BNX2I_570X_PAGE_SIZE_DEFAULT = common dso_local global i32 0, align 4
@CNIC_ARM_CQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_map_ep_dbell_regs(%struct.bnx2i_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2i_endpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bnx2i_endpoint* %0, %struct.bnx2i_endpoint** %3, align 8
  %10 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %11 = call i32 @bnx2i_get_cid_num(%struct.bnx2i_endpoint* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %13 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %1
  %20 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BNX2X_DOORBELL_PCI_BAR, align 4
  %26 = call i64 @pci_resource_start(i32 %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i32, i32* @BNX2X_DB_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 131071
  %31 = mul nsw i32 %28, %30
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i8* @ioremap_nocache(i64 %35, i32 4)
  %37 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %19
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %135

48:                                               ; preds = %19
  br label %131

49:                                               ; preds = %1
  %50 = load i32, i32* @BNX2I_NX2_DEV_5709, align 4
  %51 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i64 @test_bit(i32 %50, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %102

57:                                               ; preds = %49
  %58 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BNX2I_MQ_BIN_MODE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %102

65:                                               ; preds = %57
  %66 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %67 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* @BNX2_MQ_CONFIG2, align 4
  %70 = call i32 @REG_RD(%struct.TYPE_4__* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BNX2_MQ_CONFIG2_FIRST_L4L5, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @BNX2_MQ_CONFIG2_CONT_SZ, align 4
  %76 = and i32 %74, %75
  %77 = ashr i32 %76, 3
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %65
  %81 = load i32, i32* @CTX_OFFSET, align 4
  %82 = load i32, i32* @MAX_CID_CNT, align 4
  %83 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* @BNX2I_570X_PAGE_SIZE_DEFAULT, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = sdiv i32 %89, %90
  %92 = add nsw i32 %91, 256
  %93 = mul nsw i32 %86, %92
  %94 = add nsw i32 %85, %93
  store i32 %94, i32* %5, align 4
  br label %101

95:                                               ; preds = %65
  %96 = load i32, i32* @CTX_OFFSET, align 4
  %97 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %98 = load i32, i32* %4, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %95, %80
  br label %108

102:                                              ; preds = %57, %49
  %103 = load i32, i32* @CTX_OFFSET, align 4
  %104 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %105 = load i32, i32* %4, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %101
  %109 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %110 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %118 = call i8* @ioremap_nocache(i64 %116, i32 %117)
  %119 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %120 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  %122 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %123 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %108
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %135

130:                                              ; preds = %108
  br label %131

131:                                              ; preds = %130, %48
  %132 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %133 = load i32, i32* @CNIC_ARM_CQE, align 4
  %134 = call i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint* %132, i32 %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %127, %45
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @bnx2i_get_cid_num(%struct.bnx2i_endpoint*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i8* @ioremap_nocache(i64, i32) #1

declare dso_local i32 @REG_RD(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
