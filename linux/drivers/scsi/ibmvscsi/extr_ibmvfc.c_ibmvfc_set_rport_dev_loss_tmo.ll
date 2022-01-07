; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_set_rport_dev_loss_tmo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_set_rport_dev_loss_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport*, i32)* @ibmvfc_set_rport_dev_loss_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_set_rport_dev_loss_tmo(%struct.fc_rport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_rport* %0, %struct.fc_rport** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %13 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
