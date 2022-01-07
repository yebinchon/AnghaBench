; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.fc_disc, %struct.TYPE_2__ }
%struct.fc_disc = type { i8* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@fc_disc_start = common dso_local global i64 0, align 8
@fc_disc_stop = common dso_local global i64 0, align 8
@fc_disc_stop_final = common dso_local global i64 0, align 8
@fc_disc_recv_req = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_disc_config(%struct.fc_lport* %0, i8* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fc_disc*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @fc_disc_start, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i64 %12, i64* %15, align 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @fc_disc_stop, align 8
  %24 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i64 %23, i64* %26, align 8
  br label %27

27:                                               ; preds = %22, %16
  %28 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* @fc_disc_stop_final, align 8
  %35 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* @fc_disc_recv_req, align 8
  %46 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %47 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %51 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %50, i32 0, i32 0
  store %struct.fc_disc* %51, %struct.fc_disc** %5, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %54 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
