; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_wait_for_compound_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_wait_for_compound_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.TCP_Server_Info*, i32)* }

@CIFS_OP_MASK = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, i32, i32*)* @wait_for_compound_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_compound_request(%struct.TCP_Server_Info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32* (%struct.TCP_Server_Info*, i32)*, i32* (%struct.TCP_Server_Info*, i32)** %14, align 8
  %16 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @CIFS_OP_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32* %15(%struct.TCP_Server_Info* %16, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %22 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %4
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %32, %34
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %39 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %53

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %4
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %46 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @wait_for_free_credits(%struct.TCP_Server_Info* %48, i32 %49, i32 60000, i32 %50, i32* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %44, %37
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_free_credits(%struct.TCP_Server_Info*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
