; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_nvram_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_nvram_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_iscsi_block = type { i32 }
%struct.qedi_ctx = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvm_iscsi_block* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NUM_OF_ISCSI_PF_SUPPORTED = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_BLK_CTRL_FLAG_MASK = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_BLK_CTRL_FLAG_OFFSET = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_BLK_CTRL_FLAG_IS_NOT_EMPTY = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_BLK_CTRL_FLAG_PF_MAPPED = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_MASK = common dso_local global i32 0, align 4
@NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvm_iscsi_block* (%struct.qedi_ctx*)* @qedi_get_nvram_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx* %0) #0 {
  %2 = alloca %struct.nvm_iscsi_block*, align 8
  %3 = alloca %struct.qedi_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvm_iscsi_block*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %3, align 8
  %8 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.qedi_ctx*, %struct.qedi_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %17, align 8
  %19 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %18, i64 0
  store %struct.nvm_iscsi_block* %19, %struct.nvm_iscsi_block** %7, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %51, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NUM_OF_ISCSI_PF_SUPPORTED, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %26 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NVM_ISCSI_CFG_BLK_CTRL_FLAG_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @NVM_ISCSI_CFG_BLK_CTRL_FLAG_OFFSET, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NVM_ISCSI_CFG_BLK_CTRL_FLAG_IS_NOT_EMPTY, align 4
  %34 = load i32, i32* @NVM_ISCSI_CFG_BLK_CTRL_FLAG_PF_MAPPED, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %41 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @NVM_ISCSI_CFG_BLK_MAPPED_PF_ID_OFFSET, align 4
  %46 = ashr i32 %44, %45
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  store %struct.nvm_iscsi_block* %49, %struct.nvm_iscsi_block** %2, align 8
  br label %57

50:                                               ; preds = %38, %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %7, align 8
  %55 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %54, i32 1
  store %struct.nvm_iscsi_block* %55, %struct.nvm_iscsi_block** %7, align 8
  br label %20

56:                                               ; preds = %20
  store %struct.nvm_iscsi_block* null, %struct.nvm_iscsi_block** %2, align 8
  br label %57

57:                                               ; preds = %56, %48
  %58 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %2, align 8
  ret %struct.nvm_iscsi_block* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
