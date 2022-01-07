; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_status_read_refill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_status_read_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i64, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"axsref1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_status_read_refill(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 1
  %7 = call i64 @atomic_add_unless(i32* %6, i32 -1, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @zfcp_fsf_status_read(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 1
  %18 = call i32 @atomic_inc(i32* %17)
  %19 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %19, i32 0, i32 1
  %21 = call i64 @atomic_read(i32* %20)
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %28 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %27, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %32

29:                                               ; preds = %15
  br label %31

30:                                               ; preds = %9
  br label %4

31:                                               ; preds = %29, %4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i64 @zfcp_fsf_status_read(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
