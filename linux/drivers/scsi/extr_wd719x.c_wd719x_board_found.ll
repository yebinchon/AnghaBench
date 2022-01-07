; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_board_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_board_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32 }
%struct.wd719x = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32*, %struct.Scsi_Host*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@wd719x_board_found.card_types = internal constant [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"Unknown card\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"WD7193\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"WD7197\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"WD7296\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"unable to allocate parameter buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WD719X_HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to allocate hash buffer\0A\00", align 1
@wd719x_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"wd719x\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to assign IRQ %d\0A\00", align 1
@WD719X_EE_SCSI_ID_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"%s at I/O 0x%lx, IRQ %u, SCSI ID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @wd719x_board_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd719x_board_found(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.wd719x*, align 8
  %5 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = call %struct.wd719x* @shost_priv(%struct.Scsi_Host* %6)
  store %struct.wd719x* %7, %struct.wd719x** %4, align 8
  %8 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %9 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %8, i32 0, i32 8
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %12 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @pci_resource_start(%struct.TYPE_3__* %13, i32 0)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %18 = call i64 @wd719x_detect_type(%struct.wd719x* %17)
  %19 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %20 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %22 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %23 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %22, i32 0, i32 7
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %23, align 8
  %24 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %25 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %32 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %34 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %33, i32 0, i32 3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %38 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @dma_alloc_coherent(i32* %36, i32 4, i32* %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_4__*
  %42 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %43 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %42, i32 0, i32 2
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %45 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %1
  %49 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %50 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_warn(i32* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %175

56:                                               ; preds = %1
  %57 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %58 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* @WD719X_HASH_TABLE_SIZE, align 4
  %62 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %63 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %62, i32 0, i32 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @dma_alloc_coherent(i32* %60, i32 %61, i32* %63, i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_4__*
  %67 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %68 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %67, i32 0, i32 5
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %70 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = icmp ne %struct.TYPE_4__* %71, null
  br i1 %72, label %81, label %73

73:                                               ; preds = %56
  %74 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %75 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_warn(i32* %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %162

81:                                               ; preds = %56
  %82 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %83 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %82, i32 0, i32 3
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @wd719x_interrupt, align 4
  %88 = load i32, i32* @IRQF_SHARED, align 4
  %89 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %90 = call i32 @request_irq(i32 %86, i32 %87, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.wd719x* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %81
  %94 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %95 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %99 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_warn(i32* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  br label %149

104:                                              ; preds = %81
  %105 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %106 = call i32 @wd719x_read_eeprom(%struct.wd719x* %105)
  %107 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %108 = call i32 @wd719x_chip_init(%struct.wd719x* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %141

112:                                              ; preds = %104
  %113 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %114 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @WD719X_EE_SCSI_ID_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %121 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %123 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %122, i32 0, i32 3
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %127 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds [4 x i8*], [4 x i8*]* @wd719x_board_found.card_types, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %135 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %138 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dev_info(i32* %125, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %130, i32 %133, i32 %136, i32 %139)
  store i32 0, i32* %2, align 4
  br label %175

141:                                              ; preds = %111
  %142 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %143 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %142, i32 0, i32 3
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %148 = call i32 @free_irq(i32 %146, %struct.wd719x* %147)
  br label %149

149:                                              ; preds = %141, %93
  %150 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %151 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %150, i32 0, i32 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* @WD719X_HASH_TABLE_SIZE, align 4
  %155 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %156 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %155, i32 0, i32 5
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %159 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dma_free_coherent(i32* %153, i32 %154, %struct.TYPE_4__* %157, i32 %160)
  br label %162

162:                                              ; preds = %149, %73
  %163 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %164 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %163, i32 0, i32 3
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %168 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %167, i32 0, i32 2
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = load %struct.wd719x*, %struct.wd719x** %4, align 8
  %171 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @dma_free_coherent(i32* %166, i32 4, %struct.TYPE_4__* %169, i32 %172)
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %162, %112, %48
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.wd719x* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @wd719x_detect_type(%struct.wd719x*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.wd719x*) #1

declare dso_local i32 @wd719x_read_eeprom(%struct.wd719x*) #1

declare dso_local i32 @wd719x_chip_init(%struct.wd719x*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.wd719x*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
