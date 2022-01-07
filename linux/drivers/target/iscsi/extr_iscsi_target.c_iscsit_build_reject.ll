; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iscsi_reject = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@ISCSI_OP_REJECT = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@ISCSI_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_build_reject(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, %struct.iscsi_reject* %2) #0 {
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_reject*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_reject* %2, %struct.iscsi_reject** %6, align 8
  %7 = load i32, i32* @ISCSI_OP_REJECT, align 4
  %8 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %9 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %16 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %24 = call i32 @hton24(i32 %22, i32 %23)
  %25 = call i8* @cpu_to_be32(i32 -1)
  %26 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i64 @atomic_read(i32* %51)
  %53 = trunc i64 %52 to i32
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.iscsi_reject*, %struct.iscsi_reject** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  ret void
}

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
