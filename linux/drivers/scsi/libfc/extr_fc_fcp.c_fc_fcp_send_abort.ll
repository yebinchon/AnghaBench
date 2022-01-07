; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_send_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_fcp_pkt*)* @fc_fcp_send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_fcp_send_abort(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca i32, align 4
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  %5 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %6 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %14 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (...) @get_cpu()
  %19 = call %struct.TYPE_4__* @per_cpu_ptr(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = call i32 (...) @put_cpu()
  %24 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %25 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %26 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %30 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @fc_seq_exch_abort(i32 %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %12
  %38 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %39 = call i32 @fc_fcp_abort_done(%struct.fc_fcp_pkt* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %12
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_4__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @fc_seq_exch_abort(i32, i32) #1

declare dso_local i32 @fc_fcp_abort_done(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
