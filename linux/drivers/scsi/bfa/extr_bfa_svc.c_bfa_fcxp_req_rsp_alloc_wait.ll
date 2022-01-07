; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_req_rsp_alloc_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_req_rsp_alloc_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcxp_wqe_s = type { i32, i32, i32, i8*, i8*, i8*, i8*, %struct.bfa_s*, i8*, i8*, i32 }
%struct.bfa_fcxp_mod_s = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcxp_req_rsp_alloc_wait(%struct.bfa_s* %0, %struct.bfa_fcxp_wqe_s* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, i64 %11) #0 {
  %13 = alloca %struct.bfa_s*, align 8
  %14 = alloca %struct.bfa_fcxp_wqe_s*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.bfa_fcxp_mod_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %13, align 8
  store %struct.bfa_fcxp_wqe_s* %1, %struct.bfa_fcxp_wqe_s** %14, align 8
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  store i64 %11, i64* %24, align 8
  %26 = load %struct.bfa_s*, %struct.bfa_s** %13, align 8
  %27 = call %struct.bfa_fcxp_mod_s* @BFA_FCXP_MOD(%struct.bfa_s* %26)
  store %struct.bfa_fcxp_mod_s* %27, %struct.bfa_fcxp_mod_s** %25, align 8
  %28 = load i64, i64* %24, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %12
  %31 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %25, align 8
  %32 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %31, i32 0, i32 3
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  br label %46

38:                                               ; preds = %12
  %39 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %25, align 8
  %40 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %39, i32 0, i32 2
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %49 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %52 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %55 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load %struct.bfa_s*, %struct.bfa_s** %13, align 8
  %57 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %58 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %57, i32 0, i32 7
  store %struct.bfa_s* %56, %struct.bfa_s** %58, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %61 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %19, align 4
  %63 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %64 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i8*, i8** %20, align 8
  %66 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %67 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %21, align 8
  %69 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %70 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %73 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %23, align 8
  %75 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %76 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %24, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %46
  %80 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %81 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %80, i32 0, i32 2
  %82 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %25, align 8
  %83 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %82, i32 0, i32 1
  %84 = call i32 @list_add_tail(i32* %81, i32* %83)
  br label %91

85:                                               ; preds = %46
  %86 = load %struct.bfa_fcxp_wqe_s*, %struct.bfa_fcxp_wqe_s** %14, align 8
  %87 = getelementptr inbounds %struct.bfa_fcxp_wqe_s, %struct.bfa_fcxp_wqe_s* %86, i32 0, i32 2
  %88 = load %struct.bfa_fcxp_mod_s*, %struct.bfa_fcxp_mod_s** %25, align 8
  %89 = getelementptr inbounds %struct.bfa_fcxp_mod_s, %struct.bfa_fcxp_mod_s* %88, i32 0, i32 0
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  br label %91

91:                                               ; preds = %85, %79
  ret void
}

declare dso_local %struct.bfa_fcxp_mod_s* @BFA_FCXP_MOD(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
