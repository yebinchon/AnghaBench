; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_add_mport_pw_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_add_mport_pw_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32, i32 }
%union.rio_pw_msg = type opaque
%struct.rio_pwrite = type { i32 (%struct.rio_mport.0*, i8*, %union.rio_pw_msg.1*, i32)*, i32, i8* }
%struct.rio_mport.0 = type opaque
%union.rio_pw_msg.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_add_mport_pw_handler(%struct.rio_mport* %0, i8* %1, i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_mport*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)*, align 8
  %8 = alloca %struct.rio_pwrite*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)* %2, i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rio_pwrite* @kzalloc(i32 24, i32 %9)
  store %struct.rio_pwrite* %10, %struct.rio_pwrite** %8, align 8
  %11 = load %struct.rio_pwrite*, %struct.rio_pwrite** %8, align 8
  %12 = icmp ne %struct.rio_pwrite* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)*, i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)** %7, align 8
  %18 = bitcast i32 (%struct.rio_mport*, i8*, %union.rio_pw_msg*, i32)* %17 to i32 (%struct.rio_mport.0*, i8*, %union.rio_pw_msg.1*, i32)*
  %19 = load %struct.rio_pwrite*, %struct.rio_pwrite** %8, align 8
  %20 = getelementptr inbounds %struct.rio_pwrite, %struct.rio_pwrite* %19, i32 0, i32 0
  store i32 (%struct.rio_mport.0*, i8*, %union.rio_pw_msg.1*, i32)* %18, i32 (%struct.rio_mport.0*, i8*, %union.rio_pw_msg.1*, i32)** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.rio_pwrite*, %struct.rio_pwrite** %8, align 8
  %23 = getelementptr inbounds %struct.rio_pwrite, %struct.rio_pwrite* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %25 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.rio_pwrite*, %struct.rio_pwrite** %8, align 8
  %28 = getelementptr inbounds %struct.rio_pwrite, %struct.rio_pwrite* %27, i32 0, i32 1
  %29 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %30 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %29, i32 0, i32 1
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load %struct.rio_mport*, %struct.rio_mport** %5, align 8
  %33 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.rio_pwrite* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
