; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iotag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iotag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i64, %struct.lpfc_iocbq** }
%struct.lpfc_iocbq = type { i64 }

@LPFC_IOCBQ_LOOKUP_INCREMENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"0318 Failed to allocate IOTAG.last IOTAG is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lpfc_sli_next_iotag(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq**, align 8
  %7 = alloca %struct.lpfc_iocbq**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lpfc_sli*, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 1
  store %struct.lpfc_sli* %12, %struct.lpfc_sli** %9, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %10, align 8
  %21 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %30 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %30, i32 0, i32 2
  %32 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %32, i64 %33
  store %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq** %34, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %40 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  store i64 %41, i64* %3, align 8
  br label %164

42:                                               ; preds = %2
  %43 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %44 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @LPFC_IOCBQ_LOOKUP_INCREMENT, align 4
  %47 = sub nsw i32 65535, %46
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %151

50:                                               ; preds = %42
  %51 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @LPFC_IOCBQ_LOOKUP_INCREMENT, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  store i64 %56, i64* %8, align 8
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.lpfc_iocbq** @kcalloc(i64 %60, i32 8, i32 %61)
  store %struct.lpfc_iocbq** %62, %struct.lpfc_iocbq*** %6, align 8
  %63 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %64 = icmp ne %struct.lpfc_iocbq** %63, null
  br i1 %64, label %65, label %150

65:                                               ; preds = %50
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_irq(i32* %67)
  %69 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %69, i32 0, i32 2
  %71 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %70, align 8
  store %struct.lpfc_iocbq** %71, %struct.lpfc_iocbq*** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %74 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ule i64 %72, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %65
  %78 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %79 = call i32 @kfree(%struct.lpfc_iocbq** %78)
  %80 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %81 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %10, align 8
  %85 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %86 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %77
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %92 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %94 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %95 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %94, i32 0, i32 2
  %96 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %96, i64 %97
  store %struct.lpfc_iocbq* %93, %struct.lpfc_iocbq** %98, align 8
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock_irq(i32* %100)
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %10, align 8
  store i64 %105, i64* %3, align 8
  br label %164

106:                                              ; preds = %77
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_irq(i32* %108)
  store i64 0, i64* %3, align 8
  br label %164

110:                                              ; preds = %65
  %111 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %112 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %111, i32 0, i32 2
  %113 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %112, align 8
  %114 = icmp ne %struct.lpfc_iocbq** %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %117 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %7, align 8
  %118 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %119 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  %122 = mul i64 %121, 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(%struct.lpfc_iocbq** %116, %struct.lpfc_iocbq** %117, i32 %123)
  br label %125

125:                                              ; preds = %115, %110
  %126 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %127 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %128 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %127, i32 0, i32 2
  store %struct.lpfc_iocbq** %126, %struct.lpfc_iocbq*** %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %131 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %134 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %136 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %137 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %136, i32 0, i32 2
  %138 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %138, i64 %139
  store %struct.lpfc_iocbq* %135, %struct.lpfc_iocbq** %140, align 8
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock_irq(i32* %142)
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %146 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %7, align 8
  %148 = call i32 @kfree(%struct.lpfc_iocbq** %147)
  %149 = load i64, i64* %10, align 8
  store i64 %149, i64* %3, align 8
  br label %164

150:                                              ; preds = %50
  br label %155

151:                                              ; preds = %42
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 0
  %154 = call i32 @spin_unlock_irq(i32* %153)
  br label %155

155:                                              ; preds = %151, %150
  br label %156

156:                                              ; preds = %155
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %158 = load i32, i32* @KERN_WARNING, align 4
  %159 = load i32, i32* @LOG_SLI, align 4
  %160 = load %struct.lpfc_sli*, %struct.lpfc_sli** %9, align 8
  %161 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %162)
  store i64 0, i64* %3, align 8
  br label %164

164:                                              ; preds = %156, %125, %106, %89, %25
  %165 = load i64, i64* %3, align 8
  ret i64 %165
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.lpfc_iocbq** @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_iocbq**) #1

declare dso_local i32 @memcpy(%struct.lpfc_iocbq**, %struct.lpfc_iocbq**, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
