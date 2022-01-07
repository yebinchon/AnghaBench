; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_validate_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_validate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i64, i32, i32, i32 }
%struct.list_head = type { i32 }

@ZFCP_STATUS_COMMON_NOESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_port*, %struct.list_head*)* @zfcp_fc_validate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_validate_port(%struct.zfcp_port* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %5, i32 0, i32 3
  %7 = call i32 @atomic_read(i32* %6)
  %8 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %32

12:                                               ; preds = %2
  %13 = load i32, i32* @ZFCP_STATUS_COMMON_NOESC, align 4
  %14 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %15 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %14, i32 0, i32 3
  %16 = call i32 @atomic_andnot(i32 %13, i32* %15)
  %17 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %18 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %12
  %22 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %22, i32 0, i32 2
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %12
  br label %32

27:                                               ; preds = %21
  %28 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %28, i32 0, i32 1
  %30 = load %struct.list_head*, %struct.list_head** %4, align 8
  %31 = call i32 @list_move_tail(i32* %29, %struct.list_head* %30)
  br label %32

32:                                               ; preds = %27, %26, %11
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
