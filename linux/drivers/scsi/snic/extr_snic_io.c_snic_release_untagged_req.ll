; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_release_untagged_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_release_untagged_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32, i64 }
%struct.snic_req_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_release_untagged_req(%struct.snic* %0, %struct.snic_req_info* %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_req_info*, align 8
  %5 = alloca i64, align 8
  store %struct.snic* %0, %struct.snic** %3, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %4, align 8
  %6 = load %struct.snic*, %struct.snic** %3, align 8
  %7 = getelementptr inbounds %struct.snic, %struct.snic* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.snic*, %struct.snic** %3, align 8
  %11 = getelementptr inbounds %struct.snic, %struct.snic* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.snic*, %struct.snic** %3, align 8
  %16 = getelementptr inbounds %struct.snic, %struct.snic* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.snic*, %struct.snic** %3, align 8
  %21 = getelementptr inbounds %struct.snic, %struct.snic* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.snic*, %struct.snic** %3, align 8
  %25 = getelementptr inbounds %struct.snic, %struct.snic* %24, i32 0, i32 0
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %29 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %28, i32 0, i32 0
  %30 = call i64 @list_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.snic*, %struct.snic** %3, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %48

37:                                               ; preds = %19
  %38 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %39 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %38, i32 0, i32 0
  %40 = call i32 @list_del_init(i32* %39)
  %41 = load %struct.snic*, %struct.snic** %3, align 8
  %42 = getelementptr inbounds %struct.snic, %struct.snic* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.snic*, %struct.snic** %3, align 8
  %46 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %47 = call i32 @snic_req_free(%struct.snic* %45, %struct.snic_req_info* %46)
  br label %48

48:                                               ; preds = %37, %32, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @snic_req_free(%struct.snic*, %struct.snic_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
