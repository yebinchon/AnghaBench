; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_req_rsp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_req_rsp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_fcxp_s* @bfa_fcxp_req_rsp_alloc(i8* %0, %struct.bfa_s* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.bfa_fcxp_s*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bfa_s*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.bfa_s* %1, %struct.bfa_s** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store %struct.bfa_fcxp_s* null, %struct.bfa_fcxp_s** %20, align 8
  %21 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  %22 = icmp eq %struct.bfa_s* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  %26 = call i32 @BFA_FCXP_MOD(%struct.bfa_s* %25)
  %27 = load i32, i32* %19, align 4
  %28 = call %struct.bfa_fcxp_s* @bfa_fcxp_get(i32 %26, i32 %27)
  store %struct.bfa_fcxp_s* %28, %struct.bfa_fcxp_s** %20, align 8
  %29 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %20, align 8
  %30 = icmp eq %struct.bfa_fcxp_s* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %9
  store %struct.bfa_fcxp_s* null, %struct.bfa_fcxp_s** %10, align 8
  br label %49

32:                                               ; preds = %9
  %33 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %20, align 8
  %35 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bfa_trc(%struct.bfa_s* %33, i32 %36)
  %38 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %20, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @bfa_fcxp_init(%struct.bfa_fcxp_s* %38, i8* %39, %struct.bfa_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %20, align 8
  store %struct.bfa_fcxp_s* %48, %struct.bfa_fcxp_s** %10, align 8
  br label %49

49:                                               ; preds = %32, %31
  %50 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  ret %struct.bfa_fcxp_s* %50
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcxp_get(i32, i32) #1

declare dso_local i32 @BFA_FCXP_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_fcxp_init(%struct.bfa_fcxp_s*, i8*, %struct.bfa_s*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
