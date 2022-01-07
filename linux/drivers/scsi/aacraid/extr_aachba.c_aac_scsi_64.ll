; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_scsi_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_scsi_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 }
%struct.aac_srb = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sgmap64 = type { i32 }

@ScsiPortCommand64 = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@aac_srb_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*)* @aac_scsi_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_scsi_64(%struct.fib* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_srb*, align 8
  %8 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.fib*, %struct.fib** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = call %struct.aac_srb* @aac_scsi_common(%struct.fib* %9, %struct.scsi_cmnd* %10)
  store %struct.aac_srb* %11, %struct.aac_srb** %7, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %14 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %13, i32 0, i32 0
  %15 = bitcast %struct.TYPE_3__* %14 to %struct.sgmap64*
  %16 = call i64 @aac_build_sg64(%struct.scsi_cmnd* %12, %struct.sgmap64* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %23)
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %27 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %29 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memset(i32 %30, i32 0, i32 4)
  %32 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %33 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.aac_srb*, %struct.aac_srb** %7, align 8
  %43 = getelementptr inbounds %struct.aac_srb, %struct.aac_srb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = and i32 %46, 255
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 8, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.fib*, %struct.fib** %4, align 8
  %55 = getelementptr inbounds %struct.fib, %struct.fib* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 %59, 4
  %61 = icmp ugt i64 %53, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @BUG_ON(i32 %62)
  %64 = load i32, i32* @ScsiPortCommand64, align 4
  %65 = load %struct.fib*, %struct.fib** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @FsaNormal, align 4
  %68 = load i64, i64* @aac_srb_callback, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %71 = bitcast %struct.scsi_cmnd* %70 to i8*
  %72 = call i32 @aac_fib_send(i32 %64, %struct.fib* %65, i32 %66, i32 %67, i32 0, i32 1, i32 %69, i8* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %22, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.aac_srb* @aac_scsi_common(%struct.fib*, %struct.scsi_cmnd*) #1

declare dso_local i64 @aac_build_sg64(%struct.scsi_cmnd*, %struct.sgmap64*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
