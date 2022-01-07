; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_set_rrq_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_set_rrq_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_nodelist = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_node_rrq = type { i32, i8*, %struct.TYPE_4__*, i32, %struct.lpfc_nodelist*, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@HBA_RRQ_ACTIVE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"3155 Unable to allocate RRQ xri:0x%x rxid:0x%x DID:0x%x Send:%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"2921 Can't set rrq active xri:0x%x rxid:0x%x DID:0x%x Send:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_set_rrq_active(%struct.lpfc_hba* %0, %struct.lpfc_nodelist* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.lpfc_node_rrq*, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %16 = icmp ne %struct.lpfc_nodelist* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %193

20:                                               ; preds = %5
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %193

28:                                               ; preds = %20
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 2
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FC_UNLOADING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %176

48:                                               ; preds = %28
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %50 = call i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %176

53:                                               ; preds = %48
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FC_UNLOADING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %176

68:                                               ; preds = %58, %53
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %70 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %176

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %77 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @test_and_set_bit(i8* %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %176

82:                                               ; preds = %74
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call %struct.lpfc_node_rrq* @mempool_alloc(i32 %89, i32 %90)
  store %struct.lpfc_node_rrq* %91, %struct.lpfc_node_rrq** %13, align 8
  %92 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %93 = icmp ne %struct.lpfc_node_rrq* %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %82
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %96 = load i32, i32* @KERN_INFO, align 4
  %97 = load i32, i32* @LOG_SLI, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %101 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %95, i32 %96, i32 %97, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %99, i32 %102, i8* %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %193

107:                                              ; preds = %82
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** %11, align 8
  %114 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %115 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %114, i32 0, i32 7
  store i8* %113, i8** %115, align 8
  br label %119

116:                                              ; preds = %107
  %117 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %118 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %117, i32 0, i32 7
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i8*, i8** %9, align 8
  %121 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %122 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load i64, i64* @jiffies, align 8
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  %128 = mul nsw i32 1000, %127
  %129 = call i64 @msecs_to_jiffies(i32 %128)
  %130 = add nsw i64 %123, %129
  %131 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %132 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %131, i32 0, i32 5
  store i64 %130, i64* %132, align 8
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %134 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %135 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %134, i32 0, i32 4
  store %struct.lpfc_nodelist* %133, %struct.lpfc_nodelist** %135, align 8
  %136 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %137 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %140 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %142 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %145 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %144, i32 0, i32 2
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %145, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %148 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 2
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @spin_lock_irqsave(i32* %150, i64 %151)
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 4
  %155 = call i32 @list_empty(i32* %154)
  store i32 %155, i32* %14, align 4
  %156 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %157 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %156, i32 0, i32 0
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 4
  %160 = call i32 @list_add_tail(i32* %157, i32* %159)
  %161 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %119
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %170 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %169)
  br label %171

171:                                              ; preds = %168, %119
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 2
  %174 = load i64, i64* %12, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  store i32 0, i32* %6, align 4
  br label %193

176:                                              ; preds = %81, %73, %67, %52, %41
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 2
  %179 = load i64, i64* %12, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* %178, i64 %179)
  %181 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %182 = load i32, i32* @KERN_INFO, align 4
  %183 = load i32, i32* @LOG_SLI, align 4
  %184 = load i8*, i8** %9, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %187 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %181, i32 %182, i32 %183, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %184, i8* %185, i32 %188, i8* %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %176, %171, %94, %25, %17
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i64 @test_and_set_bit(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.lpfc_node_rrq* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
