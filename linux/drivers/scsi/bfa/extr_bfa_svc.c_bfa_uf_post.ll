; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_uf_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_uf_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_uf_mod_s = type { i32, i32, i32* }
%struct.bfa_uf_s = type { i64, i32 }
%struct.bfi_uf_buf_post_s = type { i32 }

@BFA_REQQ_FCXP = common dso_local global i32 0, align 4
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_uf_mod_s*, %struct.bfa_uf_s*)* @bfa_uf_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_uf_post(%struct.bfa_uf_mod_s* %0, %struct.bfa_uf_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_uf_mod_s*, align 8
  %5 = alloca %struct.bfa_uf_s*, align 8
  %6 = alloca %struct.bfi_uf_buf_post_s*, align 8
  store %struct.bfa_uf_mod_s* %0, %struct.bfa_uf_mod_s** %4, align 8
  store %struct.bfa_uf_s* %1, %struct.bfa_uf_s** %5, align 8
  %7 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %4, align 8
  %8 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %11 = call %struct.bfi_uf_buf_post_s* @bfa_reqq_next(i32 %9, i32 %10)
  store %struct.bfi_uf_buf_post_s* %11, %struct.bfi_uf_buf_post_s** %6, align 8
  %12 = load %struct.bfi_uf_buf_post_s*, %struct.bfi_uf_buf_post_s** %6, align 8
  %13 = icmp ne %struct.bfi_uf_buf_post_s* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @BFA_STATUS_FAILED, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.bfi_uf_buf_post_s*, %struct.bfi_uf_buf_post_s** %6, align 8
  %18 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = call i32 @memcpy(%struct.bfi_uf_buf_post_s* %17, i32* %24, i32 4)
  %26 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %30 = load %struct.bfi_uf_buf_post_s*, %struct.bfi_uf_buf_post_s** %6, align 8
  %31 = getelementptr inbounds %struct.bfi_uf_buf_post_s, %struct.bfi_uf_buf_post_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bfa_reqq_produce(i32 %28, i32 %29, i32 %32)
  %34 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bfa_trc(i32 %36, i64 %39)
  %41 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %5, align 8
  %42 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %41, i32 0, i32 1
  %43 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %16, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.bfi_uf_buf_post_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @memcpy(%struct.bfi_uf_buf_post_s*, i32*, i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
