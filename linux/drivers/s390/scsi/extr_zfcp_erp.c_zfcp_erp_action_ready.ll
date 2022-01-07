; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_action_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.zfcp_adapter*, i32 }
%struct.zfcp_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"erardy1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"erardy2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_erp_action*)* @zfcp_erp_action_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_erp_action_ready(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca %struct.zfcp_erp_action*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %2, align 8
  %4 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %4, i32 0, i32 0
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  store %struct.zfcp_adapter* %6, %struct.zfcp_adapter** %3, align 8
  %7 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %7, i32 0, i32 1
  %9 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %9, i32 0, i32 0
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %12 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %11, i32 0, i32 1
  %13 = call i32 @list_move(i32* %8, i32* %12)
  %14 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %15 = call i32 @zfcp_dbf_rec_run(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_erp_action* %14)
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 0
  %18 = call i32 @wake_up(i32* %17)
  %19 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %2, align 8
  %20 = call i32 @zfcp_dbf_rec_run(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_erp_action* %19)
  ret void
}

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @zfcp_dbf_rec_run(i8*, %struct.zfcp_erp_action*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
