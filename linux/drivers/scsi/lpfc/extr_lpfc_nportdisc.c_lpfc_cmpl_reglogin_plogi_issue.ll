; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_plogi_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_plogi_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@FC_UNLOADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_reglogin_plogi_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_reglogin_plogi_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %11, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %9, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FC_UNLOADING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @lpfc_release_rpi(%struct.lpfc_hba* %43, %struct.lpfc_vport* %44, %struct.lpfc_nodelist* %45, i32 %46)
  br label %48

48:                                               ; preds = %34, %29, %4
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local i32 @lpfc_release_rpi(%struct.lpfc_hba*, %struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
