; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_putq_wait_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_putq_wait_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.scsi_cmnd*, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i8* }

@.str = private unnamed_addr constant [19 x i8] c"ips_putq_wait_tail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.scsi_cmnd*)* @ips_putq_wait_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_putq_wait_tail(%struct.TYPE_3__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %5 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1)
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %7 = icmp ne %struct.scsi_cmnd* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %40

9:                                                ; preds = %2
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %15 = icmp ne %struct.scsi_cmnd* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = bitcast %struct.scsi_cmnd* %17 to i8*
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %20, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  store i8* %18, i8** %22, align 8
  br label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %28, align 8
  %30 = icmp ne %struct.scsi_cmnd* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store %struct.scsi_cmnd* %32, %struct.scsi_cmnd** %34, align 8
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
