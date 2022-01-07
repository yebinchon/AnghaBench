; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.aac_dev* }
%struct.aac_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_write = type { %struct.TYPE_4__, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@VM_CtBlockWrite = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32, i32)* @aac_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_write_block(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aac_write*, align 8
  %14 = alloca %struct.aac_dev*, align 8
  %15 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.fib*, %struct.fib** %7, align 8
  %17 = getelementptr inbounds %struct.fib, %struct.fib* %16, i32 0, i32 0
  %18 = load %struct.aac_dev*, %struct.aac_dev** %17, align 8
  store %struct.aac_dev* %18, %struct.aac_dev** %14, align 8
  %19 = load %struct.fib*, %struct.fib** %7, align 8
  %20 = call i32 @aac_fib_init(%struct.fib* %19)
  %21 = load %struct.fib*, %struct.fib** %7, align 8
  %22 = call i64 @fib_data(%struct.fib* %21)
  %23 = inttoptr i64 %22 to %struct.aac_write*
  store %struct.aac_write* %23, %struct.aac_write** %13, align 8
  %24 = load i32, i32* @VM_CtBlockWrite, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %27 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %29 = call i64 @scmd_id(%struct.scsi_cmnd* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %33 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %37 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.aac_dev*, %struct.aac_dev** %14, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %43 = call i64 @scmd_id(%struct.scsi_cmnd* %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %38, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %50 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = call i8* @cpu_to_le32(i32 1)
  %52 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %53 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %56 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %57 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %56, i32 0, i32 0
  %58 = call i64 @aac_build_sg(%struct.scsi_cmnd* %55, %struct.TYPE_4__* %57)
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %5
  %62 = load i64, i64* %15, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %96

64:                                               ; preds = %5
  %65 = load %struct.aac_write*, %struct.aac_write** %13, align 8
  %66 = getelementptr inbounds %struct.aac_write, %struct.aac_write* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @le32_to_cpu(i8* %68)
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = add i64 40, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.fib*, %struct.fib** %7, align 8
  %78 = getelementptr inbounds %struct.fib, %struct.fib* %77, i32 0, i32 0
  %79 = load %struct.aac_dev*, %struct.aac_dev** %78, align 8
  %80 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = sub i64 %82, 4
  %84 = icmp ugt i64 %76, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load i32, i32* @ContainerCommand, align 4
  %88 = load %struct.fib*, %struct.fib** %7, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @FsaNormal, align 4
  %91 = load i64, i64* @io_callback, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %94 = bitcast %struct.scsi_cmnd* %93 to i8*
  %95 = call i32 @aac_fib_send(i32 %87, %struct.fib* %88, i32 %89, i32 %90, i32 0, i32 1, i32 %92, i8* %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %64, %61
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i64 @aac_build_sg(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
