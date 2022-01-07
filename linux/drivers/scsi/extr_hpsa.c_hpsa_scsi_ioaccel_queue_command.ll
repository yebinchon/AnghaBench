; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_ioaccel_queue_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_ioaccel_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i64, i32, i64 }

@IO_ACCEL_INELIGIBLE = common dso_local global i32 0, align 4
@CFGTBL_Trans_io_accel1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, i32, i32*, i32, i32*, %struct.hpsa_scsi_dev_t*)* @hpsa_scsi_ioaccel_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_ioaccel_queue_command(%struct.ctlr_info* %0, %struct.CommandList* %1, i32 %2, i32* %3, i32 %4, i32* %5, %struct.hpsa_scsi_dev_t* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctlr_info*, align 8
  %10 = alloca %struct.CommandList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %9, align 8
  store %struct.CommandList* %1, %struct.CommandList** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.hpsa_scsi_dev_t* %6, %struct.hpsa_scsi_dev_t** %15, align 8
  %16 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %17 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %77

23:                                               ; preds = %7
  %24 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %25 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 -1, i32* %8, align 4
  br label %77

33:                                               ; preds = %23
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %15, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %77

39:                                               ; preds = %33
  %40 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %15, align 8
  %41 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %40, i32 0, i32 1
  %42 = call i64 @atomic_inc_return(i32* %41)
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %15, align 8
  %44 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %15, align 8
  %49 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %48, i32 0, i32 1
  %50 = call i32 @atomic_dec(i32* %49)
  %51 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %51, i32* %8, align 4
  br label %77

52:                                               ; preds = %39
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %54 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CFGTBL_Trans_io_accel1, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %61 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %15, align 8
  %67 = call i32 @hpsa_scsi_ioaccel1_queue_command(%struct.ctlr_info* %60, %struct.CommandList* %61, i32 %62, i32* %63, i32 %64, i32* %65, %struct.hpsa_scsi_dev_t* %66)
  store i32 %67, i32* %8, align 4
  br label %77

68:                                               ; preds = %52
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %9, align 8
  %70 = load %struct.CommandList*, %struct.CommandList** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %15, align 8
  %76 = call i32 @hpsa_scsi_ioaccel2_queue_command(%struct.ctlr_info* %69, %struct.CommandList* %70, i32 %71, i32* %72, i32 %73, i32* %74, %struct.hpsa_scsi_dev_t* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %68, %59, %47, %38, %32, %22
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @hpsa_scsi_ioaccel1_queue_command(%struct.ctlr_info*, %struct.CommandList*, i32, i32*, i32, i32*, %struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @hpsa_scsi_ioaccel2_queue_command(%struct.ctlr_info*, %struct.CommandList*, i32, i32*, i32, i32*, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
