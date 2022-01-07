; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_build_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64 }
%struct.inbound_queue_table = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"No free mpi buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"INB Q %x OPCODE:%x , UPDATED PI=%d CI=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %0, %struct.inbound_queue_table* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pm8001_hba_info*, align 8
  %8 = alloca %struct.inbound_queue_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %7, align 8
  store %struct.inbound_queue_table* %1, %struct.inbound_queue_table** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %17 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @pm8001_mpi_msg_free_get(%struct.inbound_queue_table* %17, i64 %20, i8** %16)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %25 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %24, i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %87

29:                                               ; preds = %5
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %38 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, 4
  %41 = call i32 @memcpy(i8* %35, i8* %36, i64 %40)
  %42 = load i32, i32* %13, align 4
  %43 = shl i32 %42, 30
  %44 = or i32 -2147483648, %43
  %45 = load i32, i32* %14, align 4
  %46 = and i32 %45, 31
  %47 = shl i32 %46, 24
  %48 = or i32 %44, %47
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 63
  %51 = shl i32 %50, 16
  %52 = or i32 %48, %51
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, 15
  %55 = shl i32 %54, 12
  %56 = or i32 %52, %55
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 4095
  %59 = or i32 %56, %58
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr i8, i8* %60, i64 -4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = call i32 @pm8001_write_32(i8* %61, i32 0, i32 %63)
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %66 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %67 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %70 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %73 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %65, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %80 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %8, align 8
  %83 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78, i32 %81, i32 %84)
  %86 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %76, i32 %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %29, %23
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i64 @pm8001_mpi_msg_free_get(%struct.inbound_queue_table*, i64, i8**) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @pm8001_write_32(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
