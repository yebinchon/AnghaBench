; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_tgt_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_tgt_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snic_tgt = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Target Device ID %d (%s) Permanently Deleted.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_tgt_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.snic_tgt*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.snic_tgt* @dev_to_tgt(%struct.device* %4)
  store %struct.snic_tgt* %5, %struct.snic_tgt** %3, align 8
  %6 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %7 = call i32 @snic_tgt_to_shost(%struct.snic_tgt* %6)
  %8 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %9 = getelementptr inbounds %struct.snic_tgt, %struct.snic_tgt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @dev_name(%struct.device* %11)
  %13 = call i32 @SNIC_HOST_INFO(i32 %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %15 = getelementptr inbounds %struct.snic_tgt, %struct.snic_tgt* %14, i32 0, i32 0
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @SNIC_BUG_ON(i32 %19)
  %21 = load %struct.snic_tgt*, %struct.snic_tgt** %3, align 8
  %22 = call i32 @kfree(%struct.snic_tgt* %21)
  ret void
}

declare dso_local %struct.snic_tgt* @dev_to_tgt(%struct.device*) #1

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*, i32, i32) #1

declare dso_local i32 @snic_tgt_to_shost(%struct.snic_tgt*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.snic_tgt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
