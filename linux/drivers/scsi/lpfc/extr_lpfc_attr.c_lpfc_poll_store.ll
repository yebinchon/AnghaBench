; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_poll_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_poll_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"3051 lpfc_poll changed from %d to %d\0A\00", align 1
@ENABLE_FCP_RING_POLLING = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lpfc_poll_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_poll_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %10, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %11, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %23, align 8
  store %struct.lpfc_hba* %24, %struct.lpfc_hba** %12, align 8
  store i32 0, i32* %15, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @isdigit(i8 signext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %180

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %15)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %180

40:                                               ; preds = %33
  %41 = load i32, i32* %15, align 4
  %42 = and i32 %41, 3
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %180

48:                                               ; preds = %40
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LPFC_SLI_REV4, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load i32, i32* @LOG_INIT, align 4
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 2
  %66 = call i32 @spin_lock_irq(i32* %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @ENABLE_FCP_RING_POLLING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %55
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %114

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %79
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @lpfc_readl(i32 %87, i32* %13)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %180

96:                                               ; preds = %84
  %97 = load i32, i32* @HC_R0INT_ENA, align 4
  %98 = load i32, i32* @LPFC_FCP_RING, align 4
  %99 = shl i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %13, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @writel(i32 %103, i32 %106)
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @readl(i32 %110)
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %113 = call i32 @lpfc_poll_start_timer(%struct.lpfc_hba* %112)
  br label %114

114:                                              ; preds = %96, %79, %74
  br label %125

115:                                              ; preds = %55
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 2
  %121 = call i32 @spin_unlock_irq(i32* %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %180

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %114
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %171, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %130
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 2
  %138 = call i32 @spin_unlock_irq(i32* %137)
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 4
  %141 = call i32 @del_timer(i32* %140)
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 2
  %144 = call i32 @spin_lock_irq(i32* %143)
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %146 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @lpfc_readl(i32 %147, i32* %13)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %135
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 2
  %153 = call i32 @spin_unlock_irq(i32* %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %180

156:                                              ; preds = %135
  %157 = load i32, i32* @HC_R0INT_ENA, align 4
  %158 = load i32, i32* @LPFC_FCP_RING, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @writel(i32 %162, i32 %165)
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @readl(i32 %169)
  br label %171

171:                                              ; preds = %156, %130, %125
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 2
  %177 = call i32 @spin_unlock_irq(i32* %176)
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @strlen(i8* %178)
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %171, %150, %118, %90, %45, %37, %30
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_poll_start_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
