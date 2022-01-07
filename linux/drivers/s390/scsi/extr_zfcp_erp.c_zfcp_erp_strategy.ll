; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32, i32, i32 }

@ZFCP_STATUS_ERP_DISMISSED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_TIMEDOUT = common dso_local global i32 0, align 4
@ZFCP_STATUS_ERP_LOWMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"erstgy1\00", align 1
@zfcp_adapter_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_strategy(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %6 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %6, i32 0, i32 1
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %5, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 0
  %11 = call i32 @kref_get(i32* %10)
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @write_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %17 = call i32 @zfcp_erp_strategy_check_fsfreq(%struct.zfcp_erp_action* %16)
  %18 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %19 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZFCP_STATUS_ERP_DISMISSED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %26 = call i32 @zfcp_erp_action_dequeue(%struct.zfcp_erp_action* %25)
  store i32 132, i32* %3, align 4
  br label %135

27:                                               ; preds = %1
  %28 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %29 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZFCP_STATUS_ERP_TIMEDOUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 130, i32* %3, align 4
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %37 = call i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action* %36)
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @write_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %43 = call i32 @zfcp_erp_strategy_do_action(%struct.zfcp_erp_action* %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %45 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %44, i32 0, i32 1
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @write_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %49 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ZFCP_STATUS_ERP_DISMISSED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i32 133, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %3, align 4
  switch i32 %56, label %109 [
    i32 129, label %57
    i32 133, label %89
    i32 128, label %108
    i32 130, label %108
    i32 131, label %108
    i32 132, label %108
  ]

57:                                               ; preds = %55
  %58 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %59 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %70 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %71 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %64, %57
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %79 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %84 = call i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %83, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %88

85:                                               ; preds = %74
  %86 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %87 = call i32 @zfcp_erp_strategy_memwait(%struct.zfcp_erp_action* %86)
  store i32 133, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %135

89:                                               ; preds = %55
  %90 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %91 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %98 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @ZFCP_STATUS_ERP_LOWMEM, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %104 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %96, %89
  br label %135

108:                                              ; preds = %55, %55, %55, %55
  br label %109

109:                                              ; preds = %55, %108
  br label %110

110:                                              ; preds = %109, %34
  %111 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @zfcp_erp_strategy_check_target(%struct.zfcp_erp_action* %111, i32 %112)
  store i32 %113, i32* %3, align 4
  %114 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %115 = call i32 @zfcp_erp_action_dequeue(%struct.zfcp_erp_action* %114)
  %116 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @zfcp_erp_strategy_statechange(%struct.zfcp_erp_action* %116, i32 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 131
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %135

122:                                              ; preds = %110
  %123 = load i32, i32* %3, align 4
  %124 = icmp eq i32 %123, 128
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %127 = call i32 @zfcp_erp_strategy_followup_success(%struct.zfcp_erp_action* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %129, 130
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %133 = call i32 @zfcp_erp_strategy_followup_failed(%struct.zfcp_erp_action* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %121, %107, %88, %24
  %136 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %137 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %136, i32 0, i32 1
  %138 = load i64, i64* %4, align 8
  %139 = call i32 @write_unlock_irqrestore(i32* %137, i64 %138)
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 133
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %144 = load i32, i32* %3, align 4
  %145 = call i32 @zfcp_erp_action_cleanup(%struct.zfcp_erp_action* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %135
  %147 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %148 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %147, i32 0, i32 0
  %149 = load i32, i32* @zfcp_adapter_release, align 4
  %150 = call i32 @kref_put(i32* %148, i32 %149)
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zfcp_erp_strategy_check_fsfreq(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_action_dequeue(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_action_to_running(%struct.zfcp_erp_action*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @zfcp_erp_strategy_do_action(%struct.zfcp_erp_action*) #1

declare dso_local i32 @_zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

declare dso_local i32 @zfcp_erp_strategy_memwait(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_strategy_check_target(%struct.zfcp_erp_action*, i32) #1

declare dso_local i32 @zfcp_erp_strategy_statechange(%struct.zfcp_erp_action*, i32) #1

declare dso_local i32 @zfcp_erp_strategy_followup_success(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_strategy_followup_failed(%struct.zfcp_erp_action*) #1

declare dso_local i32 @zfcp_erp_action_cleanup(%struct.zfcp_erp_action*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
