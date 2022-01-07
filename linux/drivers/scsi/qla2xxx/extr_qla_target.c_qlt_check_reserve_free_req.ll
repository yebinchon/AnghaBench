; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_check_reserve_free_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_check_reserve_free_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { i64, %struct.req_que* }
%struct.req_que = type { i64, i64, i64, i32, i64* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_qpair*, i64)* @qlt_check_reserve_free_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlt_check_reserve_free_req(%struct.qla_qpair* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_qpair*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.req_que*, align 8
  store %struct.qla_qpair* %0, %struct.qla_qpair** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.qla_qpair*, %struct.qla_qpair** %4, align 8
  %9 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %8, i32 0, i32 1
  %10 = load %struct.req_que*, %struct.req_que** %9, align 8
  store %struct.req_que* %10, %struct.req_que** %7, align 8
  %11 = load %struct.req_que*, %struct.req_que** %7, align 8
  %12 = getelementptr inbounds %struct.req_que, %struct.req_que* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %14, 2
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %2
  %18 = load %struct.qla_qpair*, %struct.qla_qpair** %4, align 8
  %19 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.req_que*, %struct.req_que** %7, align 8
  %24 = getelementptr inbounds %struct.req_que, %struct.req_que* %23, i32 0, i32 4
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.req_que*, %struct.req_que** %7, align 8
  %29 = getelementptr inbounds %struct.req_que, %struct.req_que* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @RD_REG_DWORD_RELAXED(i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i64 [ %26, %22 ], [ %31, %27 ]
  store i64 %33, i64* %6, align 8
  %34 = load %struct.req_que*, %struct.req_que** %7, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.req_que*, %struct.req_que** %7, align 8
  %42 = getelementptr inbounds %struct.req_que, %struct.req_que* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.req_que*, %struct.req_que** %7, align 8
  %46 = getelementptr inbounds %struct.req_que, %struct.req_que* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %59

47:                                               ; preds = %32
  %48 = load %struct.req_que*, %struct.req_que** %7, align 8
  %49 = getelementptr inbounds %struct.req_que, %struct.req_que* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.req_que*, %struct.req_que** %7, align 8
  %52 = getelementptr inbounds %struct.req_que, %struct.req_que* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %53, %54
  %56 = sub nsw i64 %50, %55
  %57 = load %struct.req_que*, %struct.req_que** %7, align 8
  %58 = getelementptr inbounds %struct.req_que, %struct.req_que* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %39
  %60 = load %struct.req_que*, %struct.req_que** %7, align 8
  %61 = getelementptr inbounds %struct.req_que, %struct.req_que* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add nsw i64 %63, 2
  %65 = icmp slt i64 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %79

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %2
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.req_que*, %struct.req_que** %7, align 8
  %76 = getelementptr inbounds %struct.req_que, %struct.req_que* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @RD_REG_DWORD_RELAXED(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
