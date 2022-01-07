; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.aac_dev* }
%struct.aac_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_read = type { %struct.TYPE_4__, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@VM_CtBlockRead = common dso_local global i64 0, align 8
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i64)* @aac_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_read_block(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aac_read*, align 8
  %12 = alloca %struct.aac_dev*, align 8
  %13 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.fib*, %struct.fib** %6, align 8
  %15 = getelementptr inbounds %struct.fib, %struct.fib* %14, i32 0, i32 0
  %16 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  store %struct.aac_dev* %16, %struct.aac_dev** %12, align 8
  %17 = load %struct.fib*, %struct.fib** %6, align 8
  %18 = call i32 @aac_fib_init(%struct.fib* %17)
  %19 = load %struct.fib*, %struct.fib** %6, align 8
  %20 = call i64 @fib_data(%struct.fib* %19)
  %21 = inttoptr i64 %20 to %struct.aac_read*
  store %struct.aac_read* %21, %struct.aac_read** %11, align 8
  %22 = load i64, i64* @VM_CtBlockRead, align 8
  %23 = call i8* @cpu_to_le32(i64 %22)
  %24 = load %struct.aac_read*, %struct.aac_read** %11, align 8
  %25 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %27 = call i64 @scmd_id(%struct.scsi_cmnd* %26)
  %28 = call i8* @cpu_to_le32(i64 %27)
  %29 = load %struct.aac_read*, %struct.aac_read** %11, align 8
  %30 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = load %struct.aac_read*, %struct.aac_read** %11, align 8
  %35 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.aac_dev*, %struct.aac_dev** %12, align 8
  %38 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %41 = call i64 @scmd_id(%struct.scsi_cmnd* %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = mul i64 %36, %44
  %46 = call i8* @cpu_to_le32(i64 %45)
  %47 = load %struct.aac_read*, %struct.aac_read** %11, align 8
  %48 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %50 = load %struct.aac_read*, %struct.aac_read** %11, align 8
  %51 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %50, i32 0, i32 0
  %52 = call i64 @aac_build_sg(%struct.scsi_cmnd* %49, %struct.TYPE_4__* %51)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %4
  %56 = load i64, i64* %13, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %90

58:                                               ; preds = %4
  %59 = load %struct.aac_read*, %struct.aac_read** %11, align 8
  %60 = getelementptr inbounds %struct.aac_read, %struct.aac_read* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = add i64 40, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.fib*, %struct.fib** %6, align 8
  %72 = getelementptr inbounds %struct.fib, %struct.fib* %71, i32 0, i32 0
  %73 = load %struct.aac_dev*, %struct.aac_dev** %72, align 8
  %74 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sub i64 %76, 4
  %78 = icmp ugt i64 %70, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load i32, i32* @ContainerCommand, align 4
  %82 = load %struct.fib*, %struct.fib** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @FsaNormal, align 4
  %85 = load i64, i64* @io_callback, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %88 = bitcast %struct.scsi_cmnd* %87 to i8*
  %89 = call i32 @aac_fib_send(i32 %81, %struct.fib* %82, i32 %83, i32 %84, i32 0, i32 1, i32 %86, i8* %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %58, %55
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i64 @aac_build_sg(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
