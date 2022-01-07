; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_hba_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_hba_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fib = type { i32, i32, i32, i32, i8*, i64, i64, %struct.aac_dev* }
%struct.aac_dev = type { i64, i32, %struct.fib* }
%struct.aac_hba_cmd_req = type { i32, i64 }

@FIB_CONTEXT_FLAG = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_NATIVE_HBA = common dso_local global i32 0, align 4
@HBA_IU_TYPE_SCSI_CMD_REQ = common dso_local global i64 0, align 8
@FIB_CONTEXT_FLAG_SCSI_CMD = common dso_local global i32 0, align 4
@HBA_IU_TYPE_SCSI_TM_REQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AAC_NUM_MGT_FIB = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@aac_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EFAULT = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_WAIT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_TIMED_OUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_hba_send(i64 %0, %struct.fib* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fib*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.aac_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.aac_hba_cmd_req*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.fib* %1, %struct.fib** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.fib*, %struct.fib** %7, align 8
  %16 = getelementptr inbounds %struct.fib, %struct.fib* %15, i32 0, i32 7
  %17 = load %struct.aac_dev*, %struct.aac_dev** %16, align 8
  store %struct.aac_dev* %17, %struct.aac_dev** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.fib*, %struct.fib** %7, align 8
  %19 = getelementptr inbounds %struct.fib, %struct.fib* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.aac_hba_cmd_req*
  store %struct.aac_hba_cmd_req* %21, %struct.aac_hba_cmd_req** %14, align 8
  %22 = load i32, i32* @FIB_CONTEXT_FLAG, align 4
  %23 = load i32, i32* @FIB_CONTEXT_FLAG_NATIVE_HBA, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.fib*, %struct.fib** %7, align 8
  %26 = getelementptr inbounds %struct.fib, %struct.fib* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.fib*, %struct.fib** %7, align 8
  %32 = getelementptr inbounds %struct.fib, %struct.fib* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.fib*, %struct.fib** %7, align 8
  %35 = getelementptr inbounds %struct.fib, %struct.fib* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  br label %37

36:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %14, align 8
  %40 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @HBA_IU_TYPE_SCSI_CMD_REQ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = load %struct.fib*, %struct.fib** %7, align 8
  %46 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %47 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %46, i32 0, i32 2
  %48 = load %struct.fib*, %struct.fib** %47, align 8
  %49 = ptrtoint %struct.fib* %45 to i64
  %50 = ptrtoint %struct.fib* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 48
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %53, 2
  %55 = add nsw i32 %54, 1
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.aac_hba_cmd_req*, %struct.aac_hba_cmd_req** %14, align 8
  %58 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @FIB_CONTEXT_FLAG_SCSI_CMD, align 4
  %60 = load %struct.fib*, %struct.fib** %7, align 8
  %61 = getelementptr inbounds %struct.fib, %struct.fib* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %72

64:                                               ; preds = %37
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @HBA_IU_TYPE_SCSI_TM_REQ, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %216

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %72
  %76 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %77 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %76, i32 0, i32 1
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %81 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AAC_NUM_MGT_FIB, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %87 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %86, i32 0, i32 1
  %88 = load i64, i64* %13, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %216

92:                                               ; preds = %75
  %93 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %94 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %98 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %97, i32 0, i32 1
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load %struct.fib*, %struct.fib** %7, align 8
  %102 = getelementptr inbounds %struct.fib, %struct.fib* %101, i32 0, i32 2
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %92, %72
  %106 = load %struct.fib*, %struct.fib** %7, align 8
  %107 = call i64 @aac_adapter_deliver(%struct.fib* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %105
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.fib*, %struct.fib** %7, align 8
  %114 = getelementptr inbounds %struct.fib, %struct.fib* %113, i32 0, i32 2
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %118 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %117, i32 0, i32 1
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %122 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %126 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %125, i32 0, i32 1
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  br label %129

129:                                              ; preds = %112, %109
  %130 = load i32, i32* @EBUSY, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %216

132:                                              ; preds = %105
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aac_config, i32 0, i32 0), align 4
  %134 = call i32 @FIB_COUNTER_INCREMENT(i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %213

137:                                              ; preds = %132
  %138 = load %struct.fib*, %struct.fib** %7, align 8
  %139 = getelementptr inbounds %struct.fib, %struct.fib* %138, i32 0, i32 2
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load %struct.aac_dev*, %struct.aac_dev** %10, align 8
  %143 = call i32 @aac_pci_offline(%struct.aac_dev* %142)
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @EFAULT, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %216

149:                                              ; preds = %137
  %150 = load i32, i32* @FIB_CONTEXT_FLAG_WAIT, align 4
  %151 = load %struct.fib*, %struct.fib** %7, align 8
  %152 = getelementptr inbounds %struct.fib, %struct.fib* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.fib*, %struct.fib** %7, align 8
  %156 = getelementptr inbounds %struct.fib, %struct.fib* %155, i32 0, i32 3
  %157 = call i64 @wait_for_completion_interruptible(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = load %struct.fib*, %struct.fib** %7, align 8
  %161 = getelementptr inbounds %struct.fib, %struct.fib* %160, i32 0, i32 1
  store i32 2, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %149
  %163 = load i32, i32* @FIB_CONTEXT_FLAG_WAIT, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.fib*, %struct.fib** %7, align 8
  %166 = getelementptr inbounds %struct.fib, %struct.fib* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 8
  %169 = load %struct.fib*, %struct.fib** %7, align 8
  %170 = getelementptr inbounds %struct.fib, %struct.fib* %169, i32 0, i32 2
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @spin_lock_irqsave(i32* %170, i64 %171)
  %173 = load %struct.fib*, %struct.fib** %7, align 8
  %174 = getelementptr inbounds %struct.fib, %struct.fib* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %162
  %178 = load %struct.fib*, %struct.fib** %7, align 8
  %179 = getelementptr inbounds %struct.fib, %struct.fib* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %191

182:                                              ; preds = %177, %162
  %183 = load %struct.fib*, %struct.fib** %7, align 8
  %184 = getelementptr inbounds %struct.fib, %struct.fib* %183, i32 0, i32 1
  store i32 2, i32* %184, align 4
  %185 = load %struct.fib*, %struct.fib** %7, align 8
  %186 = getelementptr inbounds %struct.fib, %struct.fib* %185, i32 0, i32 2
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load i32, i32* @ERESTARTSYS, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %5, align 4
  br label %216

191:                                              ; preds = %177
  %192 = load %struct.fib*, %struct.fib** %7, align 8
  %193 = getelementptr inbounds %struct.fib, %struct.fib* %192, i32 0, i32 2
  %194 = load i64, i64* %12, align 8
  %195 = call i32 @spin_unlock_irqrestore(i32* %193, i64 %194)
  %196 = load %struct.fib*, %struct.fib** %7, align 8
  %197 = getelementptr inbounds %struct.fib, %struct.fib* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @WARN_ON(i32 %200)
  %202 = load %struct.fib*, %struct.fib** %7, align 8
  %203 = getelementptr inbounds %struct.fib, %struct.fib* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @FIB_CONTEXT_FLAG_TIMED_OUT, align 4
  %206 = and i32 %204, %205
  %207 = call i64 @unlikely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %191
  %210 = load i32, i32* @ETIMEDOUT, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %216

212:                                              ; preds = %191
  store i32 0, i32* %5, align 4
  br label %216

213:                                              ; preds = %132
  %214 = load i32, i32* @EINPROGRESS, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %213, %212, %209, %182, %146, %129, %85, %68
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @aac_adapter_deliver(%struct.fib*) #1

declare dso_local i32 @FIB_COUNTER_INCREMENT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @aac_pci_offline(%struct.aac_dev*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
