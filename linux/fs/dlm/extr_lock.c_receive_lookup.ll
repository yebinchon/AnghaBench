; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lock.c_receive_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_lookup(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %10 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = call i32 (...) @dlm_our_nodeid()
  store i32 %14, i32* %9, align 4
  %15 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %16 = call i32 @receive_extralen(%struct.dlm_message* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dlm_master_lookup(%struct.dlm_ls* %17, i32 %18, i32 %21, i32 %22, i32 0, i32* %7, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %32 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %33 = call i32 @receive_request(%struct.dlm_ls* %31, %struct.dlm_message* %32)
  br label %40

34:                                               ; preds = %26, %2
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %36 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @send_lookup_reply(%struct.dlm_ls* %35, %struct.dlm_message* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @dlm_our_nodeid(...) #1

declare dso_local i32 @receive_extralen(%struct.dlm_message*) #1

declare dso_local i32 @dlm_master_lookup(%struct.dlm_ls*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @receive_request(%struct.dlm_ls*, %struct.dlm_message*) #1

declare dso_local i32 @send_lookup_reply(%struct.dlm_ls*, %struct.dlm_message*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
