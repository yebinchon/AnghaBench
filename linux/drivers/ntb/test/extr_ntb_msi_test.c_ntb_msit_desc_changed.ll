; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_desc_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_desc_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_msit_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"MSI Descriptors Changed\0A\00", align 1
@num_irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ntb_msit_desc_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msit_desc_changed(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_msit_ctx*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ntb_msit_ctx*
  store %struct.ntb_msit_ctx* %6, %struct.ntb_msit_ctx** %3, align 8
  %7 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @num_irqs, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 %21, 1
  %23 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntb_spad_write(%struct.TYPE_8__* %19, i32 %22, i32 %31)
  %33 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %37, 2
  %39 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntb_spad_write(%struct.TYPE_8__* %35, i32 %38, i32 %47)
  br label %49

49:                                               ; preds = %16
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = call i32 @ntb_port_number(%struct.TYPE_8__* %58)
  %60 = call i32 @BIT(i32 %59)
  %61 = call i32 @ntb_peer_db_set(%struct.TYPE_8__* %55, i32 %60)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ntb_spad_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ntb_peer_db_set(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ntb_port_number(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
