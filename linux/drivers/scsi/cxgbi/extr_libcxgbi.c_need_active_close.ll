; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_need_active_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_need_active_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i64, i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)* }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@CTPF_ACTIVE_CLOSE_NEEDED = common dso_local global i32 0, align 4
@CTP_ESTABLISHED = common dso_local global i64 0, align 8
@CTP_ACTIVE_CLOSE = common dso_local global i32 0, align 4
@CTP_PASSIVE_CLOSE = common dso_local global i64 0, align 8
@CTP_CLOSE_WAIT_2 = common dso_local global i32 0, align 4
@CTPF_LOGOUT_RSP_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_sock*)* @need_active_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @need_active_close(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %6 = shl i32 1, %5
  %7 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %8 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %9 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %12 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %15 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @log_debug(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %7, i64 %10, i32 %13, i32 %16)
  %18 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %19 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %22 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dst_confirm(i64 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 3
  %33 = call i32 @skb_queue_len(i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %35 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %34, i32 0, i32 3
  %36 = call i32 @__skb_queue_purge(i32* %35)
  %37 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %38 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %44 = load i32, i32* @CTPF_ACTIVE_CLOSE_NEEDED, align 4
  %45 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %43, i32 %44)
  br label %68

46:                                               ; preds = %30
  %47 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %48 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CTP_ESTABLISHED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  %53 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %54 = load i32, i32* @CTP_ACTIVE_CLOSE, align 4
  %55 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %53, i32 %54)
  br label %67

56:                                               ; preds = %46
  %57 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %58 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CTP_PASSIVE_CLOSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  store i32 1, i32* %4, align 4
  %63 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %64 = load i32, i32* @CTP_CLOSE_WAIT_2, align 4
  %65 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %73 = load i32, i32* @CTPF_LOGOUT_RSP_RCVD, align 4
  %74 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76, %71
  %80 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %81 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)** %83, align 8
  %85 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %86 = call i32 %84(%struct.cxgbi_sock* %85)
  br label %95

87:                                               ; preds = %76
  %88 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %89 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.cxgbi_sock*)*, i32 (%struct.cxgbi_sock*)** %91, align 8
  %93 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %94 = call i32 %92(%struct.cxgbi_sock* %93)
  br label %95

95:                                               ; preds = %87, %79
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %98 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock_bh(i32* %98)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dst_confirm(i64) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
