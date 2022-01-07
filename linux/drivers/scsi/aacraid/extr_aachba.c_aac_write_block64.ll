; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_write_block64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_write_block64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_write64 = type { %struct.TYPE_4__, i64, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@VM_CtHostWrite64 = common dso_local global i32 0, align 4
@ContainerCommand64 = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32, i32)* @aac_write_block64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_write_block64(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fib*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aac_write64*, align 8
  %14 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.fib*, %struct.fib** %7, align 8
  %16 = call i32 @aac_fib_init(%struct.fib* %15)
  %17 = load %struct.fib*, %struct.fib** %7, align 8
  %18 = call i64 @fib_data(%struct.fib* %17)
  %19 = inttoptr i64 %18 to %struct.aac_write64*
  store %struct.aac_write64* %19, %struct.aac_write64** %13, align 8
  %20 = load i32, i32* @VM_CtHostWrite64, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %23 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %25 = call i32 @scmd_id(%struct.scsi_cmnd* %24)
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %28 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %32 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %36 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %38 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %40 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %42 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %43 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %42, i32 0, i32 0
  %44 = call i64 @aac_build_sg64(%struct.scsi_cmnd* %41, %struct.TYPE_4__* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %5
  %48 = load i64, i64* %14, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %82

50:                                               ; preds = %5
  %51 = load %struct.aac_write64*, %struct.aac_write64** %13, align 8
  %52 = getelementptr inbounds %struct.aac_write64, %struct.aac_write64* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = add i64 56, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.fib*, %struct.fib** %7, align 8
  %64 = getelementptr inbounds %struct.fib, %struct.fib* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 4
  %70 = icmp ugt i64 %62, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load i32, i32* @ContainerCommand64, align 4
  %74 = load %struct.fib*, %struct.fib** %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @FsaNormal, align 4
  %77 = load i64, i64* @io_callback, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %80 = bitcast %struct.scsi_cmnd* %79 to i8*
  %81 = call i32 @aac_fib_send(i32 %73, %struct.fib* %74, i32 %75, i32 %76, i32 0, i32 1, i32 %78, i8* %80)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %50, %47
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i64 @aac_build_sg64(%struct.scsi_cmnd*, %struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
