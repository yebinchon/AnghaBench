; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_read_block64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_read_block64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.aac_read64 = type { %struct.TYPE_4__, i64, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@VM_CtHostRead64 = common dso_local global i32 0, align 4
@ContainerCommand64 = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@io_callback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*, %struct.scsi_cmnd*, i32, i32)* @aac_read_block64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_read_block64(%struct.fib* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aac_read64*, align 8
  %12 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %6, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fib*, %struct.fib** %6, align 8
  %14 = call i32 @aac_fib_init(%struct.fib* %13)
  %15 = load %struct.fib*, %struct.fib** %6, align 8
  %16 = call i64 @fib_data(%struct.fib* %15)
  %17 = inttoptr i64 %16 to %struct.aac_read64*
  store %struct.aac_read64* %17, %struct.aac_read64** %11, align 8
  %18 = load i32, i32* @VM_CtHostRead64, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %21 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %23 = call i32 @scmd_id(%struct.scsi_cmnd* %22)
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %26 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %30 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %34 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %36 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %38 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %41 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %40, i32 0, i32 0
  %42 = call i64 @aac_build_sg64(%struct.scsi_cmnd* %39, %struct.TYPE_4__* %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load i64, i64* %12, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %80

48:                                               ; preds = %4
  %49 = load %struct.aac_read64*, %struct.aac_read64** %11, align 8
  %50 = getelementptr inbounds %struct.aac_read64, %struct.aac_read64* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = add i64 56, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.fib*, %struct.fib** %6, align 8
  %62 = getelementptr inbounds %struct.fib, %struct.fib* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 4
  %68 = icmp ugt i64 %60, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load i32, i32* @ContainerCommand64, align 4
  %72 = load %struct.fib*, %struct.fib** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @FsaNormal, align 4
  %75 = load i64, i64* @io_callback, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %78 = bitcast %struct.scsi_cmnd* %77 to i8*
  %79 = call i32 @aac_fib_send(i32 %71, %struct.fib* %72, i32 %73, i32 %74, i32 0, i32 1, i32 %76, i8* %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %48, %45
  %81 = load i32, i32* %5, align 4
  ret i32 %81
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
