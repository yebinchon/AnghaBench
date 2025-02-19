; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_set_mfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_set_mfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FC_MIN_MAX_FRAME = common dso_local global i32 0, align 4
@FC_MAX_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_set_mfs(%struct.fc_lport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %13 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FC_MIN_MAX_FRAME, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, -4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FC_MAX_FRAME, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @FC_MAX_FRAME, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %33 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %43 = call i32 @fc_lport_enter_reset(%struct.fc_lport* %42)
  br label %44

44:                                               ; preds = %41, %37, %34
  %45 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_lport_enter_reset(%struct.fc_lport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
