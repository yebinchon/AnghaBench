; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_board_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_board_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.pci_dev = type { i64 }
%struct.asc_board = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_25__, %struct.TYPE_15__, %struct.TYPE_16__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64, i32, i64, i32, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.asc_board* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_21__*, i32, i32, i32, %struct.asc_board* }

@.str = private unnamed_addr constant [14 x i8] c"narrow board\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown adapter type: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"AscInitGetConfig()\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"AscInitSetConfig()\0A\00", align 1
@ADV_CHIP_ASC3550 = common dso_local global i64 0, align 8
@ADV_CHIP_ASC38C0800 = common dso_local global i64 0, align 8
@ASC_MAX_TID = common dso_local global i64 0, align 8
@ASC_MAX_LUN = common dso_local global i64 0, align 8
@ASC_MAX_CDB_LEN = common dso_local global i32 0, align 4
@ASC_IOADR_GAP = common dso_local global i32 0, align 4
@ADV_MAX_TID = common dso_local global i64 0, align 8
@ADV_MAX_LUN = common dso_local global i64 0, align 8
@ADV_MAX_CDB_LEN = common dso_local global i32 0, align 4
@ASC_SG_LIST_PER_Q = common dso_local global i32 0, align 4
@ADV_MAX_SG_LIST = common dso_local global i32 0, align 4
@SG_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"sg_tablesize: %d\0A\00", align 1
@BIOS_SIGNATURE = common dso_local global i32 0, align 4
@BIOS_VERSION = common dso_local global i32 0, align 4
@BIOS_CODESEG = common dso_local global i32 0, align 4
@BIOS_CODELEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"bios_signature 0x%x, bios_version 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"bios_codeseg 0x%x, bios_codelen 0x%x\0A\00", align 1
@NO_ISA_DMA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"request_irq(%d, %p)\0A\00", align 1
@advansys_interrupt = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"request_irq(): IRQ 0x%x already in use\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"request_irq(): IRQ 0x%x not valid\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"request_irq(): IRQ 0x%x failed with %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"AscInitAsc1000Driver()\0A\00", align 1
@ASC_OVERRUN_BSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"error: init_state 0x%x, warn 0x%x, error 0x%x\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ADV_CHIP_ASC38C1600 = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_38C0800_REV1 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ASP_ABP940UW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i32)* @advansys_board_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advansys_board_found(%struct.Scsi_Host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.asc_board*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %20 = call %struct.asc_board* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.asc_board* %20, %struct.asc_board** %9, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %25 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.pci_dev* @to_pci_dev(i32 %26)
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi %struct.pci_dev* [ %27, %23 ], [ null, %28 ]
  store %struct.pci_dev* %30, %struct.pci_dev** %8, align 8
  %31 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %32 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %37 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 11
  store %struct.asc_board* %42, %struct.asc_board** %44, align 8
  %45 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %46 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 7
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %54

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %56 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %62 [
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = call i32 (i32, %struct.Scsi_Host*, i8*, i64, ...) @shost_printk(i32 %63, %struct.Scsi_Host* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %62
  %73 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %75 = call i64 @AscInitGetConfig(%struct.Scsi_Host* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  br label %81

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  store i32 %82, i32* %14, align 4
  br label %86

83:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %81
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %906

90:                                               ; preds = %86
  %91 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %92 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %253

94:                                               ; preds = %90
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ADV_TID_TO_TIDMASK(i32 %99)
  %101 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %102 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %106 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 3
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %15, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 7
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 7
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ASC_EEP_SET_DMA_SPD(%struct.TYPE_23__* %129, i32 %134)
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ASC_EEP_SET_CHIP_ID(%struct.TYPE_23__* %156, i32 %161)
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 7
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %178, i32* %182, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 7
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 7
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  store i32 %200, i32* %204, align 4
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  store i32 %211, i32* %215, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 7
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  store i32 %222, i32* %226, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 7
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 5
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 5
  store i32 %233, i32* %237, align 4
  %238 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %239 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %240 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %241 = call i64 @AscInitSetConfig(%struct.pci_dev* %239, %struct.Scsi_Host* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %94
  %244 = load i32, i32* @ENODEV, align 4
  %245 = sub nsw i32 0, %244
  br label %247

246:                                              ; preds = %94
  br label %247

247:                                              ; preds = %246, %243
  %248 = phi i32 [ %245, %243 ], [ 0, %246 ]
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %906

252:                                              ; preds = %247
  br label %572

253:                                              ; preds = %90
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %348

259:                                              ; preds = %253
  %260 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %261 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %260, i32 0, i32 10
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 2
  store %struct.TYPE_16__* %262, %struct.TYPE_16__** %16, align 8
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 14
  store i32 %265, i32* %267, align 4
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 14
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 13
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 12
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 4
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 11
  store i32 %289, i32* %291, align 4
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 13
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 10
  store i32 %294, i32* %296, align 4
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 12
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 9
  store i32 %299, i32* %301, align 4
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 16
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 8
  store i32 %304, i32* %306, align 4
  %307 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 15
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 7
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 7
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 4
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 4
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 4
  %327 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_20__*, %struct.TYPE_20__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 3
  store i32 %331, i32* %333, align 4
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 4
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 4
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_20__*, %struct.TYPE_20__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  br label %563

348:                                              ; preds = %253
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @ADV_CHIP_ASC38C0800, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %458

354:                                              ; preds = %348
  %355 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %356 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %355, i32 0, i32 10
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %356, i32 0, i32 1
  store %struct.TYPE_15__* %357, %struct.TYPE_15__** %17, align 8
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 16
  store i32 %360, i32* %362, align 4
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 4
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 14
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 15
  store i32 %370, i32* %372, align 4
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 4
  %375 = load %struct.TYPE_20__*, %struct.TYPE_20__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 14
  store i32 %377, i32* %379, align 4
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 13
  store i32 %384, i32* %386, align 4
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 13
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 12
  store i32 %389, i32* %391, align 4
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 12
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 11
  store i32 %394, i32* %396, align 4
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %401 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %400, i32 0, i32 6
  store i32 %399, i32* %401, align 4
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 11
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 10
  store i32 %404, i32* %406, align 4
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 10
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 9
  store i32 %409, i32* %411, align 4
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 9
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 8
  store i32 %414, i32* %416, align 4
  %417 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i32 0, i32 7
  store i32 %419, i32* %421, align 4
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 7
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %426 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %425, i32 0, i32 6
  store i32 %424, i32* %426, align 4
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i32 0, i32 6
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 5
  store i32 %429, i32* %431, align 4
  %432 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %432, i32 0, i32 5
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i32 0, i32 4
  store i32 %434, i32* %436, align 4
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %438 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_20__*, %struct.TYPE_20__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i32 0, i32 3
  store i32 %441, i32* %443, align 4
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 4
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 2
  store i32 %448, i32* %450, align 4
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i32 0, i32 4
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 1
  store i32 %455, i32* %457, align 4
  br label %562

458:                                              ; preds = %348
  %459 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %460 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %459, i32 0, i32 10
  %461 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %460, i32 0, i32 0
  store %struct.TYPE_25__* %461, %struct.TYPE_25__** %18, align 8
  %462 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %466 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %465, i32 0, i32 16
  store i32 %464, i32* %466, align 4
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %471 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %470, i32 0, i32 0
  store i32 %469, i32* %471, align 4
  %472 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %473 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %472, i32 0, i32 14
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %476 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %475, i32 0, i32 15
  store i32 %474, i32* %476, align 4
  %477 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %477, i32 0, i32 4
  %479 = load %struct.TYPE_20__*, %struct.TYPE_20__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 14
  store i32 %481, i32* %483, align 4
  %484 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %484, i32 0, i32 4
  %486 = load %struct.TYPE_20__*, %struct.TYPE_20__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 4
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %490 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %489, i32 0, i32 13
  store i32 %488, i32* %490, align 4
  %491 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %492 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %491, i32 0, i32 13
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %495 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %494, i32 0, i32 12
  store i32 %493, i32* %495, align 4
  %496 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %497 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %496, i32 0, i32 12
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %500 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %499, i32 0, i32 11
  store i32 %498, i32* %500, align 4
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %505 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %504, i32 0, i32 6
  store i32 %503, i32* %505, align 4
  %506 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %507 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %506, i32 0, i32 11
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %510 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %509, i32 0, i32 10
  store i32 %508, i32* %510, align 4
  %511 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %512 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i32 0, i32 10
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %515 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %514, i32 0, i32 9
  store i32 %513, i32* %515, align 4
  %516 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %517 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %516, i32 0, i32 9
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %520 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %519, i32 0, i32 8
  store i32 %518, i32* %520, align 4
  %521 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %522 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %521, i32 0, i32 8
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 7
  store i32 %523, i32* %525, align 4
  %526 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %527 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %526, i32 0, i32 7
  %528 = load i32, i32* %527, align 8
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 6
  store i32 %528, i32* %530, align 4
  %531 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %532 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %531, i32 0, i32 6
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 5
  store i32 %533, i32* %535, align 4
  %536 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %537 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %536, i32 0, i32 5
  %538 = load i32, i32* %537, align 8
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %540 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i32 0, i32 4
  store i32 %538, i32* %540, align 4
  %541 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %542 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %541, i32 0, i32 4
  %543 = load %struct.TYPE_20__*, %struct.TYPE_20__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 3
  store i32 %545, i32* %547, align 4
  %548 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %549 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %548, i32 0, i32 4
  %550 = load %struct.TYPE_20__*, %struct.TYPE_20__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %554 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %553, i32 0, i32 2
  store i32 %552, i32* %554, align 4
  %555 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %556 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %555, i32 0, i32 4
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %561 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %560, i32 0, i32 1
  store i32 %559, i32* %561, align 4
  br label %562

562:                                              ; preds = %458, %354
  br label %563

563:                                              ; preds = %562, %259
  %564 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %565 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 8
  %567 = call i32 @ADV_TID_TO_TIDMASK(i32 %566)
  %568 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %569 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %568, i32 0, i32 9
  %570 = load i32, i32* %569, align 4
  %571 = or i32 %570, %567
  store i32 %571, i32* %569, align 4
  br label %572

572:                                              ; preds = %563, %252
  %573 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %574 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %573, i32 0, i32 10
  store i64 0, i64* %574, align 8
  %575 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %576 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %610

578:                                              ; preds = %572
  %579 = load i64, i64* @ASC_MAX_TID, align 8
  %580 = add nsw i64 %579, 1
  %581 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %582 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %581, i32 0, i32 9
  store i64 %580, i64* %582, align 8
  %583 = load i64, i64* @ASC_MAX_LUN, align 8
  %584 = add nsw i64 %583, 1
  %585 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %586 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %585, i32 0, i32 8
  store i64 %584, i64* %586, align 8
  %587 = load i32, i32* @ASC_MAX_CDB_LEN, align 4
  %588 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %589 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %588, i32 0, i32 7
  store i32 %587, i32* %589, align 4
  %590 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %591 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %594 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %593, i32 0, i32 1
  store i32 %592, i32* %594, align 4
  %595 = load i32, i32* @ASC_IOADR_GAP, align 4
  %596 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %597 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %596, i32 0, i32 8
  store i32 %595, i32* %597, align 8
  %598 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %599 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %598, i32 0, i32 7
  %600 = load %struct.TYPE_21__*, %struct.TYPE_21__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %604 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %603, i32 0, i32 6
  store i32 %602, i32* %604, align 8
  %605 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %606 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 8
  %608 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %609 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %608, i32 0, i32 2
  store i32 %607, i32* %609, align 8
  br label %635

610:                                              ; preds = %572
  %611 = load i64, i64* @ADV_MAX_TID, align 8
  %612 = add nsw i64 %611, 1
  %613 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %614 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %613, i32 0, i32 9
  store i64 %612, i64* %614, align 8
  %615 = load i64, i64* @ADV_MAX_LUN, align 8
  %616 = add nsw i64 %615, 1
  %617 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %618 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %617, i32 0, i32 8
  store i64 %616, i64* %618, align 8
  %619 = load i32, i32* @ADV_MAX_CDB_LEN, align 4
  %620 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %621 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %620, i32 0, i32 7
  store i32 %619, i32* %621, align 4
  %622 = load i32, i32* %6, align 4
  %623 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %624 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %623, i32 0, i32 1
  store i32 %622, i32* %624, align 4
  %625 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %626 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %625, i32 0, i32 3
  %627 = load i32, i32* %626, align 8
  %628 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %629 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %628, i32 0, i32 6
  store i32 %627, i32* %629, align 8
  %630 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %631 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %634 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %633, i32 0, i32 2
  store i32 %632, i32* %634, align 8
  br label %635

635:                                              ; preds = %610, %578
  %636 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %637 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %636)
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %639, label %650

639:                                              ; preds = %635
  %640 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %641 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %640, i32 0, i32 2
  %642 = load i32, i32* %641, align 8
  %643 = sub nsw i32 %642, 2
  %644 = sdiv i32 %643, 2
  %645 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %646 = mul nsw i32 %644, %645
  %647 = add nsw i32 %646, 1
  %648 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %649 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %648, i32 0, i32 3
  store i32 %647, i32* %649, align 4
  br label %654

650:                                              ; preds = %635
  %651 = load i32, i32* @ADV_MAX_SG_LIST, align 4
  %652 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %653 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %652, i32 0, i32 3
  store i32 %651, i32* %653, align 4
  br label %654

654:                                              ; preds = %650, %639
  %655 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %656 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %655, i32 0, i32 3
  %657 = load i32, i32* %656, align 4
  %658 = load i32, i32* @SG_ALL, align 4
  %659 = icmp sgt i32 %657, %658
  br i1 %659, label %660, label %664

660:                                              ; preds = %654
  %661 = load i32, i32* @SG_ALL, align 4
  %662 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %663 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %662, i32 0, i32 3
  store i32 %661, i32* %663, align 4
  br label %664

664:                                              ; preds = %660, %654
  %665 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %666 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %665, i32 0, i32 3
  %667 = load i32, i32* %666, align 4
  %668 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %667)
  %669 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %670 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %669)
  %671 = icmp ne i64 %670, 0
  br i1 %671, label %672, label %682

672:                                              ; preds = %664
  %673 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %674 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %677 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 8
  %679 = call i32 @AscGetChipBiosAddress(i32 %675, i32 %678)
  %680 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %681 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %680, i32 0, i32 4
  store i32 %679, i32* %681, align 8
  br label %744

682:                                              ; preds = %664
  %683 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %684 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %683, i32 0, i32 2
  %685 = load i64, i64* %684, align 8
  %686 = load i32, i32* @BIOS_SIGNATURE, align 4
  %687 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %688 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %687, i32 0, i32 1
  %689 = load i32, i32* %688, align 4
  %690 = call i32 @AdvReadWordLram(i64 %685, i32 %686, i32 %689)
  %691 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %692 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %691, i32 0, i32 2
  %693 = load i64, i64* %692, align 8
  %694 = load i32, i32* @BIOS_VERSION, align 4
  %695 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %696 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %695, i32 0, i32 2
  %697 = load i32, i32* %696, align 8
  %698 = call i32 @AdvReadWordLram(i64 %693, i32 %694, i32 %697)
  %699 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %700 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %699, i32 0, i32 2
  %701 = load i64, i64* %700, align 8
  %702 = load i32, i32* @BIOS_CODESEG, align 4
  %703 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %704 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %703, i32 0, i32 3
  %705 = load i32, i32* %704, align 4
  %706 = call i32 @AdvReadWordLram(i64 %701, i32 %702, i32 %705)
  %707 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %708 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %707, i32 0, i32 2
  %709 = load i64, i64* %708, align 8
  %710 = load i32, i32* @BIOS_CODELEN, align 4
  %711 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %712 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %711, i32 0, i32 4
  %713 = load i32, i32* %712, align 8
  %714 = call i32 @AdvReadWordLram(i64 %709, i32 %710, i32 %713)
  %715 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %716 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %715, i32 0, i32 1
  %717 = load i32, i32* %716, align 4
  %718 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %719 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %718, i32 0, i32 2
  %720 = load i32, i32* %719, align 8
  %721 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %717, i32 %720)
  %722 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %723 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %722, i32 0, i32 3
  %724 = load i32, i32* %723, align 4
  %725 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %726 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %725, i32 0, i32 4
  %727 = load i32, i32* %726, align 8
  %728 = call i32 (i32, i8*, ...) @ASC_DBG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %724, i32 %727)
  %729 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %730 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %729, i32 0, i32 1
  %731 = load i32, i32* %730, align 4
  %732 = icmp eq i32 %731, 21930
  br i1 %732, label %733, label %740

733:                                              ; preds = %682
  %734 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %735 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %734, i32 0, i32 3
  %736 = load i32, i32* %735, align 4
  %737 = shl i32 %736, 4
  %738 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %739 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %738, i32 0, i32 4
  store i32 %737, i32* %739, align 8
  br label %743

740:                                              ; preds = %682
  %741 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %742 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %741, i32 0, i32 4
  store i32 0, i32* %742, align 8
  br label %743

743:                                              ; preds = %740, %733
  br label %744

744:                                              ; preds = %743, %672
  %745 = load i32, i32* @NO_ISA_DMA, align 4
  %746 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %747 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %746, i32 0, i32 5
  store i32 %745, i32* %747, align 4
  %748 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %749 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %748, i32 0, i32 6
  %750 = load i32, i32* %749, align 8
  %751 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %752 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %750, %struct.Scsi_Host* %751)
  %753 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %754 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %753, i32 0, i32 6
  %755 = load i32, i32* %754, align 8
  %756 = load i32, i32* @advansys_interrupt, align 4
  %757 = load i32, i32* %12, align 4
  %758 = load i32, i32* @DRV_NAME, align 4
  %759 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %760 = call i32 @request_irq(i32 %755, i32 %756, i32 %757, i32 %758, %struct.Scsi_Host* %759)
  store i32 %760, i32* %14, align 4
  %761 = load i32, i32* %14, align 4
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %800

763:                                              ; preds = %744
  %764 = load i32, i32* %14, align 4
  %765 = load i32, i32* @EBUSY, align 4
  %766 = sub nsw i32 0, %765
  %767 = icmp eq i32 %764, %766
  br i1 %767, label %768, label %776

768:                                              ; preds = %763
  %769 = load i32, i32* @KERN_ERR, align 4
  %770 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %771 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %772 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %771, i32 0, i32 6
  %773 = load i32, i32* %772, align 8
  %774 = sext i32 %773 to i64
  %775 = call i32 (i32, %struct.Scsi_Host*, i8*, i64, ...) @shost_printk(i32 %769, %struct.Scsi_Host* %770, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %774)
  br label %799

776:                                              ; preds = %763
  %777 = load i32, i32* %14, align 4
  %778 = load i32, i32* @EINVAL, align 4
  %779 = sub nsw i32 0, %778
  %780 = icmp eq i32 %777, %779
  br i1 %780, label %781, label %789

781:                                              ; preds = %776
  %782 = load i32, i32* @KERN_ERR, align 4
  %783 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %784 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %785 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %784, i32 0, i32 6
  %786 = load i32, i32* %785, align 8
  %787 = sext i32 %786 to i64
  %788 = call i32 (i32, %struct.Scsi_Host*, i8*, i64, ...) @shost_printk(i32 %782, %struct.Scsi_Host* %783, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %787)
  br label %798

789:                                              ; preds = %776
  %790 = load i32, i32* @KERN_ERR, align 4
  %791 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %792 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %793 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %792, i32 0, i32 6
  %794 = load i32, i32* %793, align 8
  %795 = sext i32 %794 to i64
  %796 = load i32, i32* %14, align 4
  %797 = call i32 (i32, %struct.Scsi_Host*, i8*, i64, ...) @shost_printk(i32 %790, %struct.Scsi_Host* %791, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i64 %795, i32 %796)
  br label %798

798:                                              ; preds = %789, %781
  br label %799

799:                                              ; preds = %798, %768
  br label %905

800:                                              ; preds = %744
  %801 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %802 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %801)
  %803 = icmp ne i64 %802, 0
  br i1 %803, label %804, label %849

804:                                              ; preds = %800
  %805 = call i32 (i32, i8*, ...) @ASC_DBG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %806 = load i32, i32* @ASC_OVERRUN_BSIZE, align 4
  %807 = load i32, i32* @GFP_KERNEL, align 4
  %808 = call i32 @kzalloc(i32 %806, i32 %807)
  %809 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %810 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %809, i32 0, i32 3
  store i32 %808, i32* %810, align 4
  %811 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %812 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %811, i32 0, i32 3
  %813 = load i32, i32* %812, align 4
  %814 = icmp ne i32 %813, 0
  br i1 %814, label %818, label %815

815:                                              ; preds = %804
  %816 = load i32, i32* @ENOMEM, align 4
  %817 = sub nsw i32 0, %816
  store i32 %817, i32* %14, align 4
  br label %899

818:                                              ; preds = %804
  %819 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %820 = call i32 @AscInitAsc1000Driver(%struct.TYPE_22__* %819)
  store i32 %820, i32* %13, align 4
  %821 = load i32, i32* %13, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %828, label %823

823:                                              ; preds = %818
  %824 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %825 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %824, i32 0, i32 5
  %826 = load i64, i64* %825, align 8
  %827 = icmp ne i64 %826, 0
  br i1 %827, label %828, label %848

828:                                              ; preds = %823, %818
  %829 = load i32, i32* @KERN_ERR, align 4
  %830 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %831 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %832 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %831, i32 0, i32 6
  %833 = load i32, i32* %832, align 8
  %834 = sext i32 %833 to i64
  %835 = load i32, i32* %13, align 4
  %836 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %837 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %836, i32 0, i32 5
  %838 = load i64, i64* %837, align 8
  %839 = call i32 (i32, %struct.Scsi_Host*, i8*, i64, ...) @shost_printk(i32 %829, %struct.Scsi_Host* %830, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i64 %834, i32 %835, i64 %838)
  %840 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %841 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %840, i32 0, i32 4
  %842 = load i32, i32* %841, align 8
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %847, label %844

844:                                              ; preds = %828
  %845 = load i32, i32* @ENODEV, align 4
  %846 = sub nsw i32 0, %845
  store i32 %846, i32* %14, align 4
  br label %871

847:                                              ; preds = %828
  br label %848

848:                                              ; preds = %847, %823
  br label %857

849:                                              ; preds = %800
  %850 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %851 = call i64 @advansys_wide_init_chip(%struct.Scsi_Host* %850)
  %852 = icmp ne i64 %851, 0
  br i1 %852, label %853, label %856

853:                                              ; preds = %849
  %854 = load i32, i32* @ENODEV, align 4
  %855 = sub nsw i32 0, %854
  store i32 %855, i32* %14, align 4
  br label %871

856:                                              ; preds = %849
  br label %857

857:                                              ; preds = %856, %848
  %858 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %859 = call i32 @ASC_DBG_PRT_SCSI_HOST(i32 2, %struct.Scsi_Host* %858)
  %860 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %861 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %862 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %861, i32 0, i32 7
  %863 = load i32, i32* %862, align 4
  %864 = call i32 @scsi_add_host(%struct.Scsi_Host* %860, i32 %863)
  store i32 %864, i32* %14, align 4
  %865 = load i32, i32* %14, align 4
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %868

867:                                              ; preds = %857
  br label %871

868:                                              ; preds = %857
  %869 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %870 = call i32 @scsi_scan_host(%struct.Scsi_Host* %869)
  store i32 0, i32* %4, align 4
  br label %918

871:                                              ; preds = %867, %853, %844
  %872 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %873 = call i64 @ASC_NARROW_BOARD(%struct.asc_board* %872)
  %874 = icmp ne i64 %873, 0
  br i1 %874, label %875, label %895

875:                                              ; preds = %871
  %876 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %877 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %876, i32 0, i32 4
  %878 = load i32, i32* %877, align 8
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %880, label %890

880:                                              ; preds = %875
  %881 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %882 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %881, i32 0, i32 7
  %883 = load i32, i32* %882, align 4
  %884 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %885 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %884, i32 0, i32 4
  %886 = load i32, i32* %885, align 8
  %887 = load i32, i32* @ASC_OVERRUN_BSIZE, align 4
  %888 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %889 = call i32 @dma_unmap_single(i32 %883, i32 %886, i32 %887, i32 %888)
  br label %890

890:                                              ; preds = %880, %875
  %891 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %892 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %891, i32 0, i32 3
  %893 = load i32, i32* %892, align 4
  %894 = call i32 @kfree(i32 %893)
  br label %898

895:                                              ; preds = %871
  %896 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %897 = call i32 @advansys_wide_free_mem(%struct.asc_board* %896)
  br label %898

898:                                              ; preds = %895, %890
  br label %899

899:                                              ; preds = %898, %815
  %900 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %901 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %900, i32 0, i32 6
  %902 = load i32, i32* %901, align 8
  %903 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %904 = call i32 @free_irq(i32 %902, %struct.Scsi_Host* %903)
  br label %905

905:                                              ; preds = %899, %799
  br label %906

906:                                              ; preds = %905, %251, %89
  %907 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %908 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %907, i32 0, i32 5
  %909 = load i64, i64* %908, align 8
  %910 = icmp ne i64 %909, 0
  br i1 %910, label %911, label %916

911:                                              ; preds = %906
  %912 = load %struct.asc_board*, %struct.asc_board** %9, align 8
  %913 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %912, i32 0, i32 5
  %914 = load i64, i64* %913, align 8
  %915 = call i32 @iounmap(i64 %914)
  br label %916

916:                                              ; preds = %911, %906
  %917 = load i32, i32* %14, align 4
  store i32 %917, i32* %4, align 4
  br label %918

918:                                              ; preds = %916, %868
  %919 = load i32, i32* %4, align 4
  ret i32 %919
}

declare dso_local %struct.asc_board* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ASC_NARROW_BOARD(%struct.asc_board*) #1

declare dso_local i32 @ASC_DBG(i32, i8*, ...) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i64, ...) #1

declare dso_local i64 @AscInitGetConfig(%struct.Scsi_Host*) #1

declare dso_local i32 @ADV_TID_TO_TIDMASK(i32) #1

declare dso_local i32 @ASC_EEP_SET_DMA_SPD(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ASC_EEP_SET_CHIP_ID(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @AscInitSetConfig(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @AscGetChipBiosAddress(i32, i32) #1

declare dso_local i32 @AdvReadWordLram(i64, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.Scsi_Host*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @AscInitAsc1000Driver(%struct.TYPE_22__*) #1

declare dso_local i64 @advansys_wide_init_chip(%struct.Scsi_Host*) #1

declare dso_local i32 @ASC_DBG_PRT_SCSI_HOST(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @advansys_wide_free_mem(%struct.asc_board*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
