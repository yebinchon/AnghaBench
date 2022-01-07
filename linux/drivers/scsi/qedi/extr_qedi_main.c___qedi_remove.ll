; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c___qedi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c___qedi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 (i32)* }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32)*, i32 (i32)*, i32 (i32, i32)* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.pci_dev = type { i32 }
%struct.qedi_ctx = type { i64, i32*, i32, i32, i32, i32, i32, i32*, i32* }

@QEDI_IN_OFFLINE = common dso_local global i32 0, align 4
@qedi_ops = common dso_local global %struct.TYPE_6__* null, align 8
@PCI_D0 = common dso_local global i32 0, align 4
@QEDI_MODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to send drv state to MFW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @__qedi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qedi_remove(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.qedi_ctx* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.qedi_ctx* %8, %struct.qedi_ctx** %5, align 8
  %9 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %9, i32 0, i32 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @flush_workqueue(i32* %16)
  %18 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @destroy_workqueue(i32* %20)
  %22 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %22, i32 0, i32 8
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %2
  %25 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @flush_workqueue(i32* %32)
  %34 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @destroy_workqueue(i32* %36)
  %38 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %38, i32 0, i32 7
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %29, %24
  %41 = load i32, i32* @QEDI_IN_OFFLINE, align 4
  %42 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %42, i32 0, i32 5
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @PCI_D0, align 4
  %56 = call i32 %51(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %46, %40
  %58 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %59 = call i32 @qedi_sync_free_irqs(%struct.qedi_ctx* %58)
  %60 = load i32, i32* @QEDI_IN_OFFLINE, align 4
  %61 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %61, i32 0, i32 5
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80)
  br label %82

82:                                               ; preds = %65, %57
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @QEDI_MODE_NORMAL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %88 = call i32 @qedi_free_iscsi_pf_param(%struct.qedi_ctx* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32 (i32, i32)*, i32 (i32, i32)** %93, align 8
  %95 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %94(i32 %97, i32 0)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %89
  %102 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %102, i32 0, i32 6
  %104 = call i32 @QEDI_ERR(i32* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %89
  %106 = load i32, i32* @QEDI_IN_OFFLINE, align 4
  %107 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %107, i32 0, i32 5
  %109 = call i32 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32 (i32)*, i32 (i32)** %115, align 8
  %117 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %118 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 %116(i32 %119)
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qedi_ops, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32 (i32)*, i32 (i32)** %124, align 8
  %126 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %127 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 %125(i32 %128)
  br label %130

130:                                              ; preds = %111, %105
  %131 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %132 = call i32 @qedi_destroy_fp(%struct.qedi_ctx* %131)
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @QEDI_MODE_NORMAL, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %179

136:                                              ; preds = %130
  %137 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %138 = call i32 @qedi_release_cid_que(%struct.qedi_ctx* %137)
  %139 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %140 = call i32 @qedi_cm_free_mem(%struct.qedi_ctx* %139)
  %141 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @qedi_free_uio(i32 %143)
  %145 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %146 = call i32 @qedi_free_itt(%struct.qedi_ctx* %145)
  %147 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @iscsi_host_remove(i32 %149)
  %151 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @iscsi_host_free(i32 %153)
  %155 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %156 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %136
  %160 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %161 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @kthread_stop(i32* %162)
  %164 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %165 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %164, i32 0, i32 1
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %159, %136
  %167 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %168 = call i32 @qedi_ll2_free_skbs(%struct.qedi_ctx* %167)
  %169 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %170 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %175 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @iscsi_boot_destroy_kset(i64 %176)
  br label %178

178:                                              ; preds = %173, %166
  br label %179

179:                                              ; preds = %178, %130
  ret void
}

declare dso_local %struct.qedi_ctx* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qedi_sync_free_irqs(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_free_iscsi_pf_param(%struct.qedi_ctx*) #1

declare dso_local i32 @QEDI_ERR(i32*, i8*) #1

declare dso_local i32 @qedi_destroy_fp(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_release_cid_que(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_cm_free_mem(%struct.qedi_ctx*) #1

declare dso_local i32 @qedi_free_uio(i32) #1

declare dso_local i32 @qedi_free_itt(%struct.qedi_ctx*) #1

declare dso_local i32 @iscsi_host_remove(i32) #1

declare dso_local i32 @iscsi_host_free(i32) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @qedi_ll2_free_skbs(%struct.qedi_ctx*) #1

declare dso_local i32 @iscsi_boot_destroy_kset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
