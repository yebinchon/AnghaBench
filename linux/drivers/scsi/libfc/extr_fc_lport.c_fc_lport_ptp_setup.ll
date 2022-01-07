; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ptp_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ptp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@fc_rport_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, i32, i8*, i8*)* @fc_lport_ptp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_ptp_setup(%struct.fc_lport* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 2
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %13 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %18 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 @fc_rport_logoff(%struct.TYPE_8__* %19)
  %21 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %22 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* @fc_rport_destroy, align 4
  %26 = call i32 @kref_put(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %4
  %28 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.TYPE_8__* @fc_rport_create(%struct.fc_lport* %32, i32 %33)
  %35 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %36 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %35, i32 0, i32 0
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %36, align 8
  %37 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %38 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = call i32 @kref_get(i32* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %44 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %48, i8** %53, align 8
  %54 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %55 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @fc_rport_login(%struct.TYPE_8__* %60)
  %62 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %63 = call i32 @fc_lport_enter_ready(%struct.fc_lport* %62)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @fc_rport_logoff(%struct.TYPE_8__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @fc_rport_create(%struct.fc_lport*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fc_rport_login(%struct.TYPE_8__*) #1

declare dso_local i32 @fc_lport_enter_ready(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
