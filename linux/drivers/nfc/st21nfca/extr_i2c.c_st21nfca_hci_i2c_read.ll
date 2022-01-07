; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st21nfca/extr_i2c.c_st21nfca_hci_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st21nfca_i2c_phy = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i64*, i32 }

@ST21NFCA_HCI_LLC_MAX_PAYLOAD = common dso_local global i32 0, align 4
@len_seq = common dso_local global i32* null, align 8
@wait_tab = common dso_local global i32* null, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ST21NFCA_SOF_EOF = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st21nfca_i2c_phy*, %struct.sk_buff*)* @st21nfca_hci_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st21nfca_hci_i2c_read(%struct.st21nfca_i2c_phy* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st21nfca_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  store %struct.st21nfca_i2c_phy* %0, %struct.st21nfca_i2c_phy** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @ST21NFCA_HCI_LLC_MAX_PAYLOAD, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %18 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %21 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** @len_seq, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %133

26:                                               ; preds = %2
  %27 = load i32*, i32** @len_seq, align 8
  %28 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %29 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %34 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %35 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %61, %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** @wait_tab, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %43, 0
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i1 [ false, %37 ], [ %44, %42 ]
  br i1 %46, label %47, label %64

47:                                               ; preds = %45
  %48 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @i2c_master_recv(%struct.i2c_client* %48, i32* %16, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32*, i32** @wait_tab, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @msleep(i32 %58)
  br label %60

60:                                               ; preds = %53, %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %37

64:                                               ; preds = %45
  %65 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %66 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %73 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* @EREMOTEIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

76:                                               ; preds = %64
  %77 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %78 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = call i64 @IS_START_OF_FRAME(i32* %16)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @skb_trim(%struct.sk_buff* %85, i32 0)
  %87 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %88 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

91:                                               ; preds = %81, %76
  %92 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %93 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = call i64 @IS_START_OF_FRAME(i32* %16)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call i32 @skb_trim(%struct.sk_buff* %100, i32 0)
  %102 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %103 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %96, %91
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @skb_put_data(%struct.sk_buff* %106, i32* %16, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %111, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ST21NFCA_SOF_EOF, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %105
  %122 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %123 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %122, i32 0, i32 0
  store i32 0, i32* %123, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call i32 @st21nfca_hci_i2c_repack(%struct.sk_buff* %124)
  store i32 %125, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

126:                                              ; preds = %105
  %127 = load %struct.st21nfca_i2c_phy*, %struct.st21nfca_i2c_phy** %4, align 8
  %128 = getelementptr inbounds %struct.st21nfca_i2c_phy, %struct.st21nfca_i2c_phy* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

133:                                              ; preds = %2
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %136

136:                                              ; preds = %133, %126, %121, %84, %71
  %137 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @IS_START_OF_FRAME(i32*) #2

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #2

declare dso_local i32 @st21nfca_hci_i2c_repack(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
