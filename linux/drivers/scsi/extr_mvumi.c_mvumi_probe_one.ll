; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.mvumi_hba = type { i32, %struct.pci_dev*, %struct.TYPE_4__*, %struct.Scsi_Host*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.mvumi_hba*)*, i32 (%struct.mvumi_hba*)* }

@.str = private unnamed_addr constant [35 x i8] c" %#4.04x:%#4.04x:%#4.04x:%#4.04x: \00", align 1
@mvumi_template = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"scsi_host_alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@mvumi_isr_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"mvumi\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to register IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"probe mvumi driver successfully.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @mvumi_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.mvumi_hba*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %169

30:                                               ; preds = %2
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @mvumi_pci_set_master(%struct.pci_dev* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %165

36:                                               ; preds = %30
  %37 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @mvumi_template, i32 80)
  store %struct.Scsi_Host* %37, %struct.Scsi_Host** %6, align 8
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = icmp ne %struct.Scsi_Host* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %164

46:                                               ; preds = %36
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %48 = call %struct.mvumi_hba* @shost_priv(%struct.Scsi_Host* %47)
  store %struct.mvumi_hba* %48, %struct.mvumi_hba** %7, align 8
  %49 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %50 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %49, i32 0, i32 14
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %53 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %52, i32 0, i32 13
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %56 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %55, i32 0, i32 12
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %59 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %58, i32 0, i32 11
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %62 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %61, i32 0, i32 10
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %65 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %64, i32 0, i32 9
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %68 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %67, i32 0, i32 8
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %71 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %70, i32 0, i32 7
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %74 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %73, i32 0, i32 6
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  %76 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %77 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %76, i32 0, i32 5
  %78 = call i32 @init_waitqueue_head(i32* %77)
  %79 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %80 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %79, i32 0, i32 4
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %84 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %83, i32 0, i32 1
  store %struct.pci_dev* %82, %struct.pci_dev** %84, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %86 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %87 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %86, i32 0, i32 3
  store %struct.Scsi_Host* %85, %struct.Scsi_Host** %87, align 8
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %93, %96
  %98 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %99 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %101 = call i32 @mvumi_init_fw(%struct.mvumi_hba* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %46
  br label %161

105:                                              ; preds = %46
  %106 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %107 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %106, i32 0, i32 1
  %108 = load %struct.pci_dev*, %struct.pci_dev** %107, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @mvumi_isr_handler, align 4
  %112 = load i32, i32* @IRQF_SHARED, align 4
  %113 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %114 = call i32 @request_irq(i32 %110, i32 %111, i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.mvumi_hba* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 2
  %120 = call i32 @dev_err(i32* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %158

121:                                              ; preds = %105
  %122 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %123 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32 (%struct.mvumi_hba*)*, i32 (%struct.mvumi_hba*)** %125, align 8
  %127 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %128 = call i32 %126(%struct.mvumi_hba* %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %131 = call i32 @pci_set_drvdata(%struct.pci_dev* %129, %struct.mvumi_hba* %130)
  %132 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %133 = call i32 @mvumi_io_attach(%struct.mvumi_hba* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %121
  br label %143

137:                                              ; preds = %121
  %138 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %139 = call i32 @mvumi_backup_bar_addr(%struct.mvumi_hba* %138)
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 2
  %142 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %169

143:                                              ; preds = %136
  %144 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %145 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32 (%struct.mvumi_hba*)*, i32 (%struct.mvumi_hba*)** %147, align 8
  %149 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %150 = call i32 %148(%struct.mvumi_hba* %149)
  %151 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %152 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %151, i32 0, i32 1
  %153 = load %struct.pci_dev*, %struct.pci_dev** %152, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %157 = call i32 @free_irq(i32 %155, %struct.mvumi_hba* %156)
  br label %158

158:                                              ; preds = %143, %117
  %159 = load %struct.mvumi_hba*, %struct.mvumi_hba** %7, align 8
  %160 = call i32 @mvumi_release_fw(%struct.mvumi_hba* %159)
  br label %161

161:                                              ; preds = %158, %104
  %162 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %163 = call i32 @scsi_host_put(%struct.Scsi_Host* %162)
  br label %164

164:                                              ; preds = %161, %40
  br label %165

165:                                              ; preds = %164, %35
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = call i32 @pci_disable_device(%struct.pci_dev* %166)
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %137, %28
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @mvumi_pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.mvumi_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mvumi_init_fw(%struct.mvumi_hba*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.mvumi_hba*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_io_attach(%struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_backup_bar_addr(%struct.mvumi_hba*) #1

declare dso_local i32 @free_irq(i32, %struct.mvumi_hba*) #1

declare dso_local i32 @mvumi_release_fw(%struct.mvumi_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
