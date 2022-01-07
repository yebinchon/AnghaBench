; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.seq_file = type { i32 }

@ips_next_controller = common dso_local global i32 0, align 4
@ips_sh = common dso_local global %struct.Scsi_Host** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @ips_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ips_next_controller, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @ips_sh, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %13, i64 %15
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  %18 = icmp ne %struct.Scsi_Host* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @ips_sh, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %20, i64 %22
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %26 = icmp eq %struct.Scsi_Host* %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @ips_sh, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %28, i64 %30
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %31, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %7, align 8
  br label %41

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %12
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %8

41:                                               ; preds = %27, %8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = call i32 @ips_host_info(i32* %48, %struct.seq_file* %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ips_host_info(i32*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
