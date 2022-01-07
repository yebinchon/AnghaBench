; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, i64, i32, i32, i8*, i64, i32, i32, i32 }

@MAILBOX_REGISTER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"qla1280_init_rings\00", align 1
@MAX_OUTSTANDING_COMMANDS = common dso_local global i32 0, align 4
@REQUEST_ENTRY_CNT = common dso_local global i8* null, align 8
@MBC_INIT_REQUEST_QUEUE_A64 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@MBC_INIT_RESPONSE_QUEUE_A64 = common dso_local global i32 0, align 4
@RESPONSE_ENTRY_CNT = common dso_local global i32 0, align 4
@BIT_5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"qla1280_init_rings: **** FAILED ****\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla1280_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_init_rings(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %6 = load i32, i32* @MAILBOX_REGISTER_COUNT, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %10 = call i32 @ENTER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MAX_OUTSTANDING_COMMANDS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32 %13, i32 0, i32 %17)
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** @REQUEST_ENTRY_CNT, align 8
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @MBC_INIT_REQUEST_QUEUE_A64, align 4
  %30 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i8*, i8** @REQUEST_ENTRY_CNT, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 65535
  %38 = getelementptr inbounds i32, i32* %9, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %40 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 65535
  %44 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds i32, i32* %9, i64 4
  store i32 0, i32* %45, align 16
  %46 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @upper_32_bits(i32 %48)
  %50 = and i32 %49, 65535
  %51 = getelementptr inbounds i32, i32* %9, i64 7
  store i32 %50, i32* %51, align 4
  %52 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @upper_32_bits(i32 %54)
  %56 = ashr i32 %55, 16
  %57 = getelementptr inbounds i32, i32* %9, i64 6
  store i32 %56, i32* %57, align 8
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %59 = load i32, i32* @BIT_7, align 4
  %60 = load i32, i32* @BIT_6, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @BIT_4, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BIT_3, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @BIT_2, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @BIT_1, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @BIT_0, align 4
  %71 = or i32 %69, %70
  %72 = getelementptr inbounds i32, i32* %9, i64 0
  %73 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %58, i32 %71, i32* %72)
  store i32 %73, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %127, label %75

75:                                               ; preds = %1
  %76 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %77 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %80 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @MBC_INIT_RESPONSE_QUEUE_A64, align 4
  %84 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %83, i32* %84, align 16
  %85 = load i32, i32* @RESPONSE_ENTRY_CNT, align 4
  %86 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %88 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 65535
  %91 = getelementptr inbounds i32, i32* %9, i64 3
  store i32 %90, i32* %91, align 4
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %93 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 16
  %96 = and i32 %95, 65535
  %97 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 %96, i32* %97, align 8
  %98 = getelementptr inbounds i32, i32* %9, i64 5
  store i32 0, i32* %98, align 4
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @upper_32_bits(i32 %101)
  %103 = and i32 %102, 65535
  %104 = getelementptr inbounds i32, i32* %9, i64 7
  store i32 %103, i32* %104, align 4
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @upper_32_bits(i32 %107)
  %109 = ashr i32 %108, 16
  %110 = getelementptr inbounds i32, i32* %9, i64 6
  store i32 %109, i32* %110, align 8
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %112 = load i32, i32* @BIT_7, align 4
  %113 = load i32, i32* @BIT_6, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @BIT_5, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @BIT_3, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @BIT_2, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @BIT_1, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @BIT_0, align 4
  %124 = or i32 %122, %123
  %125 = getelementptr inbounds i32, i32* %9, i64 0
  %126 = call i32 @qla1280_mailbox_command(%struct.scsi_qla_host* %111, i32 %124, i32* %125)
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %75, %1
  %128 = load i32, i32* %5, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  %133 = call i32 @LEAVE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* %5, align 4
  %135 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %135)
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ENTER(i8*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @qla1280_mailbox_command(%struct.scsi_qla_host*, i32, i32*) #2

declare dso_local i32 @dprintk(i32, i8*) #2

declare dso_local i32 @LEAVE(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
