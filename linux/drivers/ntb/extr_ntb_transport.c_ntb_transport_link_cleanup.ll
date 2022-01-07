; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_link_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_transport_link_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, i32, i32, i32, i32, %struct.ntb_transport_qp* }
%struct.ntb_transport_qp = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_ctx*)* @ntb_transport_link_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_link_cleanup(%struct.ntb_transport_ctx* %0) #0 {
  %2 = alloca %struct.ntb_transport_ctx*, align 8
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %2, align 8
  %7 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %43, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BIT_ULL(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %28, i32 0, i32 7
  %30 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %30, i64 %32
  store %struct.ntb_transport_qp* %33, %struct.ntb_transport_qp** %3, align 8
  %34 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %35 = call i32 @ntb_qp_link_cleanup(%struct.ntb_transport_qp* %34)
  %36 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %37 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %36, i32 0, i32 1
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %40 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %39, i32 0, i32 0
  %41 = call i32 @cancel_delayed_work_sync(i32* %40)
  br label %42

42:                                               ; preds = %27, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %48 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %52, i32 0, i32 5
  %54 = call i32 @cancel_delayed_work_sync(i32* %53)
  br label %55

55:                                               ; preds = %51, %46
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ntb_free_mw(%struct.ntb_transport_ctx* %63, i32 %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ntb_spad_count(i32 %72)
  store i32 %73, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %84, %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @ntb_spad_write(i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %74

87:                                               ; preds = %74
  ret void
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ntb_qp_link_cleanup(%struct.ntb_transport_qp*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ntb_free_mw(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @ntb_spad_count(i32) #1

declare dso_local i32 @ntb_spad_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
