; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i8**, %struct.TYPE_2__*, %struct.hwi_controller*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.beiscsi_hba* }
%struct.pci_dev = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"beiscsi_%02x_%02x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@be_isr_msix = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"BM_%d : beiscsi_init_irqs-Failed toregister msix for i = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"beiscsi_mcc_%02x\00", align 1
@be_isr_mcc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"BM_%d : beiscsi_init_irqs-Failed to register beiscsi_msix_mcc\0A\00", align 1
@be_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"beiscsi\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"BM_%d : beiscsi_init_irqs-Failed to register irq\\n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_init_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_init_irqs(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hwi_controller*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 3
  %15 = load %struct.hwi_controller*, %struct.hwi_controller** %14, align 8
  store %struct.hwi_controller* %15, %struct.hwi_controller** %5, align 8
  %16 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %17 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %16, i32 0, i32 0
  %18 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %17, align 8
  store %struct.hwi_context_memory* %18, %struct.hwi_context_memory** %6, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %155

23:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %92, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %24
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %33 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  store i8* %38, i8** %44, align 8
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %30
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %173

56:                                               ; preds = %30
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pci_irq_vector(%struct.pci_dev* %57, i32 %58)
  %60 = load i32, i32* @be_isr_msix, align 4
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %62 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %69 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %68, i32 0, i32 0
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i64 %72
  %74 = call i32 @request_irq(i32 %59, i32 %60, i32 0, i8* %67, %struct.beiscsi_hba* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %56
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %84 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @kfree(i8* %89)
  br label %173

91:                                               ; preds = %56
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %24

95:                                               ; preds = %24
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %98 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* (i32, i8*, i32, ...) @kasprintf(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %104 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %110 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %109, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %95
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %173

120:                                              ; preds = %95
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @pci_irq_vector(%struct.pci_dev* %121, i32 %122)
  %124 = load i32, i32* @be_isr_mcc, align 4
  %125 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %126 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %133 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %132, i32 0, i32 0
  %134 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %134, i64 %136
  %138 = call i32 @request_irq(i32 %123, i32 %124, i32 0, i8* %131, %struct.beiscsi_hba* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %120
  %142 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %143 = load i32, i32* @KERN_ERR, align 4
  %144 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %145 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %147 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %146, i32 0, i32 1
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @kfree(i8* %152)
  br label %173

154:                                              ; preds = %120
  br label %172

155:                                              ; preds = %1
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @be_isr, align 4
  %160 = load i32, i32* @IRQF_SHARED, align 4
  %161 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %162 = call i32 @request_irq(i32 %158, i32 %159, i32 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.beiscsi_hba* %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %167 = load i32, i32* @KERN_ERR, align 4
  %168 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %169 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %203

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %154
  store i32 0, i32* %2, align 4
  br label %203

173:                                              ; preds = %141, %117, %77, %53
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %198, %173
  %177 = load i32, i32* %9, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @pci_irq_vector(%struct.pci_dev* %180, i32 %181)
  %183 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %184 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %183, i32 0, i32 0
  %185 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %185, i64 %187
  %189 = call i32 @free_irq(i32 %182, %struct.beiscsi_hba* %188)
  %190 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %191 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %190, i32 0, i32 1
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @kfree(i8* %196)
  br label %198

198:                                              ; preds = %179
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %9, align 4
  br label %176

201:                                              ; preds = %176
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %172, %165
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i8* @kasprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.beiscsi_hba*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
