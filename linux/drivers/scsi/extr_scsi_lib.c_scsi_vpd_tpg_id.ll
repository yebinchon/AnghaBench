; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_vpd_tpg_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_vpd_tpg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_vpd = type { i8*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_vpd_tpg_id(%struct.scsi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_vpd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @EAGAIN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.scsi_vpd* @rcu_dereference(i32 %15)
  store %struct.scsi_vpd* %16, %struct.scsi_vpd** %7, align 8
  %17 = load %struct.scsi_vpd*, %struct.scsi_vpd** %7, align 8
  %18 = icmp ne %struct.scsi_vpd* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.scsi_vpd*, %struct.scsi_vpd** %7, align 8
  %25 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %54, %23
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.scsi_vpd*, %struct.scsi_vpd** %7, align 8
  %31 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.scsi_vpd*, %struct.scsi_vpd** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_vpd, %struct.scsi_vpd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = icmp ult i8* %29, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 15
  switch i32 %44, label %53 [
    i32 4, label %45
    i32 5, label %49
  ]

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  %48 = call i32 @get_unaligned_be16(i8* %47)
  store i32 %48, i32* %9, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = call i32 @get_unaligned_be16(i8* %51)
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %49, %45
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, 4
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  br label %28

63:                                               ; preds = %28
  %64 = call i32 (...) @rcu_read_unlock()
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70, %67, %63
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.scsi_vpd* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
