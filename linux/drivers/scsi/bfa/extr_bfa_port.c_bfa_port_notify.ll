; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_port_s = type { i32, i8*, i32 (i32, i32)*, i32, i8*, i32 (i32, i32)*, i32 }

@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_port_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_port_s*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_port_s*
  store %struct.bfa_port_s* %7, %struct.bfa_port_s** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %69 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %15, i32 0, i32 5
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i32)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %20, i32 0, i32 5
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %27 = call i32 %22(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %29, i32 0, i32 5
  store i32 (i32, i32)* null, i32 (i32, i32)** %30, align 8
  %31 = load i8*, i8** @BFA_FALSE, align 8
  %32 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %33 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %28, %9
  %35 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %40, i32 0, i32 2
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = icmp ne i32 (i32, i32)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %45, i32 0, i32 2
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %52 = call i32 %47(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %54, i32 0, i32 2
  store i32 (i32, i32)* null, i32 (i32, i32)** %55, align 8
  %56 = load i8*, i8** @BFA_FALSE, align 8
  %57 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %53, %34
  %60 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %61 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.bfa_port_s*, %struct.bfa_port_s** %5, align 8
  %66 = load i8*, i8** @BFA_FALSE, align 8
  %67 = call i32 @bfa_port_set_dportenabled(%struct.bfa_port_s* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %70

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %69, %68
  ret void
}

declare dso_local i32 @bfa_port_set_dportenabled(%struct.bfa_port_s*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
